package com.food.dao;



public interface UserDao {

	boolean isValidUser(String username, String password);

	boolean addUser(User user);

	boolean addOrderr(Orderr order);





}
