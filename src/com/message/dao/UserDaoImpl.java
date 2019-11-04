package com.message.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.message.model.User;
import com.message.utilities.HibernateUtil;

public class UserDaoImpl implements UserDao{
	
	EntityManager em =  HibernateUtil.getEntityManagerFactory().createEntityManager();

	@Override
	public void create(User user) {

		em.getTransaction().begin();
		
		em.persist(user);
		
		em.getTransaction().commit();
	}

	@Override
	public User findByEmail(String email) {
		
		String query = "select u from User u where u.email = :e";
		
		TypedQuery<User> findQuery = em.createQuery(query, User.class);
		
		findQuery.setParameter("e", email);
		
		List<User> users = findQuery.getResultList();
		
		System.out.println(users + " users val 2");
		System.out.println(users.isEmpty() + " users empty");
		if(!users.isEmpty()) {
			return  users.get(0);
		}else {
			return null;
		}
		
	}

}
