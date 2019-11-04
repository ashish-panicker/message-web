package com.message.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "user_messages")
public class Message {

	@Id
	@GeneratedValue(generator = "msgIdGen")
	@GenericGenerator(name = "msgIdGen", strategy = "uuid2")
	private String id;

	private String message;

	private Date postedDate;

	@OneToOne
	@JoinColumn(name = "sentBy")
	private User postedBy;

	@OneToOne
	@JoinColumn(name = "sentTo")
	private Group group;

	public Message() {
		// TODO Auto-generated constructor stub
	}

	public Message(String message, Date postedDate, User postedBy, Group group) {
		super();
		this.message = message;
		this.postedDate = postedDate;
		this.postedBy = postedBy;
		this.group = group;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Date getPostedDate() {
		return postedDate;
	}

	public void setPostedDate(Date postedDate) {
		this.postedDate = postedDate;
	}

	public User getPostedBy() {
		return postedBy;
	}

	public void setPostedBy(User postedBy) {
		this.postedBy = postedBy;
	}

	public Group getGroup() {
		return group;
	}

	public void setGroup(Group group) {
		this.group = group;
	}

}
