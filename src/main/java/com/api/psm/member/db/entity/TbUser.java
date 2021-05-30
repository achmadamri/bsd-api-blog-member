package com.api.psm.member.db.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;


/**
 * The persistent class for the tb_users database table.
 * 
 */
@Entity
@Table(name="tb_user")
@NamedQuery(name="TbUser.findAll", query="SELECT t FROM TbUser t")
public class TbUser implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="tbu_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer tbuId;

	@Column(name="tbu_create_date")
	private Date tbuCreateDate;

	@Column(name="tbu_create_id")
	private Integer tbuCreateId;

	@Column(name="tbu_update_date")
	private Date tbuUpdateDate;

	@Column(name="tbu_update_id")
	private Integer tbuUpdateId;

	@Column(name="tbu_member_id")
	private String tbuMemberId;

	@Column(name="tbu_id_login")
	private String tbuIdLogin;

	@Column(name="tbu_email")
	private String tbuEmail;

	@Column(name="tbu_password")
	private String tbuPassword;

	@Column(name="tbu_firstname")
	private String tbuFirstname;

	@Column(name="tbu_lastname")
	private String tbuLastname;

	@Column(name="tbu_mobile_phone")
	private String tbuMobilePhone;

	@Column(name="tbu_place_of_birth")
	private String tbuPlaceOfBirth;

	@Column(name="tbu_date_of_birth")
	private Date tbuDateOfBirth;

	@Column(name="tbu_status")
	private String tbuStatus;

	@Column(name="tbu_uid")
	private String tbuUid;

	@Column(name="tbu_photo")
	private String tbuPhoto;

	@Column(name="tbu_token_salt")
	private String tbuTokenSalt;

	public Integer getTbuId() {
		return tbuId;
	}

	public void setTbuId(Integer tbuId) {
		this.tbuId = tbuId;
	}

	public Date getTbuCreateDate() {
		return tbuCreateDate;
	}

	public void setTbuCreateDate(Date tbuCreateDate) {
		this.tbuCreateDate = tbuCreateDate;
	}

	public Integer getTbuCreateId() {
		return tbuCreateId;
	}

	public void setTbuCreateId(Integer tbuCreateId) {
		this.tbuCreateId = tbuCreateId;
	}

	public Date getTbuUpdateDate() {
		return tbuUpdateDate;
	}

	public void setTbuUpdateDate(Date tbuUpdateDate) {
		this.tbuUpdateDate = tbuUpdateDate;
	}

	public Integer getTbuUpdateId() {
		return tbuUpdateId;
	}

	public void setTbuUpdateId(Integer tbuUpdateId) {
		this.tbuUpdateId = tbuUpdateId;
	}

	public String getTbuMemberId() {
		return tbuMemberId;
	}

	public void setTbuMemberId(String tbuMemberId) {
		this.tbuMemberId = tbuMemberId;
	}

	public String getTbuIdLogin() {
		return tbuIdLogin;
	}

	public void setTbuIdLogin(String tbuIdLogin) {
		this.tbuIdLogin = tbuIdLogin;
	}

	public String getTbuEmail() {
		return tbuEmail;
	}

	public void setTbuEmail(String tbuEmail) {
		this.tbuEmail = tbuEmail;
	}

	public String getTbuPassword() {
		return tbuPassword;
	}

	public void setTbuPassword(String tbuPassword) {
		this.tbuPassword = tbuPassword;
	}

	public String getTbuFirstname() {
		return tbuFirstname;
	}

	public void setTbuFirstname(String tbuFirstname) {
		this.tbuFirstname = tbuFirstname;
	}

	public String getTbuLastname() {
		return tbuLastname;
	}

	public void setTbuLastname(String tbuLastname) {
		this.tbuLastname = tbuLastname;
	}

	public String getTbuMobilePhone() {
		return tbuMobilePhone;
	}

	public void setTbuMobilePhone(String tbuMobilePhone) {
		this.tbuMobilePhone = tbuMobilePhone;
	}

	public String getTbuPlaceOfBirth() {
		return tbuPlaceOfBirth;
	}

	public void setTbuPlaceOfBirth(String tbuPlaceOfBirth) {
		this.tbuPlaceOfBirth = tbuPlaceOfBirth;
	}

	public Date getTbuDateOfBirth() {
		return tbuDateOfBirth;
	}

	public void setTbuDateOfBirth(Date tbuDateOfBirth) {
		this.tbuDateOfBirth = tbuDateOfBirth;
	}

	public String getTbuStatus() {
		return tbuStatus;
	}

	public void setTbuStatus(String tbuStatus) {
		this.tbuStatus = tbuStatus;
	}

	public String getTbuUid() {
		return tbuUid;
	}

	public void setTbuUid(String tbuUid) {
		this.tbuUid = tbuUid;
	}

	public String getTbuPhoto() {
		return tbuPhoto;
	}

	public void setTbuPhoto(String tbuPhoto) {
		this.tbuPhoto = tbuPhoto;
	}

	public String getTbuTokenSalt() {
		return tbuTokenSalt;
	}

	public void setTbuTokenSalt(String tbuTokenSalt) {
		this.tbuTokenSalt = tbuTokenSalt;
	}
}