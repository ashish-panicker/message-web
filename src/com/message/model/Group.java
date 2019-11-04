package com.message.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "user_groups")
public class Group {

	@Id
	@GeneratedValue(generator = "groupIdGen")
	@GenericGenerator(name = "groupIdGen", strategy = "uuid2")
	private String id;

	private String name;

	private Date createdDate;

	@OneToOne
	@JoinColumn(name = "ownedby")
	private User owner;

	@ManyToMany
	@JoinColumn(name = "memebers")
	private List<User> members;

	public Group() {
	}

	public Group(String name, Date createdDate) {
		this.name = name;
		this.createdDate = createdDate;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public User getOwner() {
		return owner;
	}

	public void setOwner(User owner) {
		this.owner = owner;
	}

	public List<User> getMembers() {
		return members;
	}

	public void setMembers(List<User> members) {
		this.members = members;
	}

}
