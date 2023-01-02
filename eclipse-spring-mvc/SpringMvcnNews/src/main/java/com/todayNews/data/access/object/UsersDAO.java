package com.todayNews.data.access.object;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.todayNews.model.Users;


/*
 * using Data Access Object to provide access to a particular data resource 
 * we need to @Autowired for hibernate which allows Spring to resolve and inject collaborating beans into our bean.
 * 
 * we need to add  @Transactional annotation to wrap a method in a database transaction and
 *  read-only, and rollback conditions for our transaction;
 * 
 */

@Component
public class UsersDAO {

	/*
	 * create hibernate tool that is used to provide the implementation of the JPA
	 * methods
	 */
	@Autowired
	HibernateTemplate hibernateTemplate;

	// save database method and pass model class Users as parameter
	@Transactional
	public void saveToDatabaeseUser(Users users) {

		// save all users
		hibernateTemplate.save(users);
	}

	// get all over hibernate
	public List<Users> getAllUser() {

		return hibernateTemplate.loadAll(Users.class);
	}

	// get all user over id // Users object in the method
	@Transactional
	public Users getUserWithId(int id) {
		// create an object of UsersWriters;
		Users usersWriters = hibernateTemplate.get(Users.class, id);
		return usersWriters;
	}

	// create method to update users information
	@Transactional
	public void updateUsersWriters(Users users) {
		hibernateTemplate.update(users);
	}

	// delete deleteUser
	@Transactional
	public void deleteUsersWriters(int id) {
		hibernateTemplate.delete(hibernateTemplate.load(Users.class, id));
	}

}
