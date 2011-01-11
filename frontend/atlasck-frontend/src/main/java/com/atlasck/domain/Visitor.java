package com.atlasck.domain;

// Generated Oct 28, 2010 9:14:28 AM by Hibernate Tools 3.3.0.GA

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

/**
 * Visitor generated by hbm2java
 */
public class Visitor implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer id;
	private String nickname;

	@NotEmpty
	@Email
	private String email;

	private String ipAddress;
	private Date createdAt;
	private Date updatedAt;
	private Set<Question> questions = new HashSet<Question>(0);

	public Visitor() {
	}

	public Visitor(String nickname, String email) {
		this.nickname = nickname;
		this.email = email;
	}

	public Visitor(String nickname, String email, String ipAddress,
			Date createdAt, Date updatedAt, Set<Question> questions) {
		this.nickname = nickname;
		this.email = email;
		this.ipAddress = ipAddress;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
		this.questions = questions;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNickname() {
		return this.nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getIpAddress() {
		return this.ipAddress;
	}

	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}

	public Date getCreatedAt() {
		return this.createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return this.updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public Set<Question> getQuestions() {
		return this.questions;
	}

	public void setQuestions(Set<Question> questions) {
		this.questions = questions;
	}

}
