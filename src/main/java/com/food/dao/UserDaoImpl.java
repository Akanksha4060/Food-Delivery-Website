package com.food.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.food.util.DBUtil;


public class UserDaoImpl implements UserDao {

	@Override
	public boolean isValidUser(String username, String password) {
		String query = "SELECT * FROM user WHERE username = ? AND password = ?";
		try (Connection connection = DBUtil.getConnection();
				PreparedStatement pst = connection.prepareStatement(query)) {

			pst.setString(1, username);
			pst.setString(2, password);

			ResultSet rs = pst.executeQuery();
			// System.out.println("query run ho gayi");
			return rs.next();

		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean addUser(User user) {
		String query = "INSERT INTO user (username, email, password) VALUES (?, ?, ?)";

		try (Connection connection = DBUtil.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(query)) {

			preparedStatement.setString(1, user.getUsername());
			preparedStatement.setString(2, user.getEmail());
			preparedStatement.setString(3, user.getPassword());

			int rowsAffected = preparedStatement.executeUpdate();

			return rowsAffected > 0;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}

	}

	@Override
	public boolean addOrderr(Orderr order) {

		String query = "INSERT INTO orderr (username, number,foodName,extra,orderCount,address,msg) VALUES (?, ?, ?,?,?,?,?)";

		try (Connection connection = DBUtil.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(query)) {

			preparedStatement.setString(1, order.getUsername());
			preparedStatement.setString(2, order.getNumber());
			preparedStatement.setString(3, order.getFoodName());
			preparedStatement.setString(4, order.getExtra());
			preparedStatement.setString(5, order.getOrderCount());
			preparedStatement.setString(6, order.getAddress());
			preparedStatement.setString(7, order.getMsg());

			int r = preparedStatement.executeUpdate();

			return r > 0;

		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}

	}
}
