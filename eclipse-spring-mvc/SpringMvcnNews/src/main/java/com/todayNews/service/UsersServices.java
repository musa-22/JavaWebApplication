package com.todayNews.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.todayNews.data.access.object.UsersDAO;
import com.todayNews.model.Users;


/*
 * we created service class that provide some business functionalities and logic 
 * 
 */

@Component
@Service
public class UsersServices {

	@Autowired
	UsersDAO dataAccessObject;

	public void addUsersWriters(Users users) {

		dataAccessObject.saveToDatabaeseUser(users);
	}

	// here to get all users data as list

	public List<Users> getAllUsersWriters() {
		return dataAccessObject.getAllUser();
	}

	// get users with id
	public Users getUsersWritersById(int id) {

		return dataAccessObject.getUserWithId(id);
	}

	// update UsersWriters

	public void updateUsersWriters(Users users) {

		dataAccessObject.updateUsersWriters(users);
	}

	// delete users?
	public void deleteUsersWriters(int id) {

		dataAccessObject.deleteUsersWriters(id);
	}

}
