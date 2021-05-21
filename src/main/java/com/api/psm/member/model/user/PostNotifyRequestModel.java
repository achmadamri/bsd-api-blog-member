package com.api.psm.member.model.user;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import com.api.psm.member.model.RequestModel;

public class PostNotifyRequestModel extends RequestModel {
	@NotEmpty(message = "Uid may not be empty")
	@Size(min = 1, max = 100, message = "Uid must be between 1 and 100 characters long")
	private String tbuUid;

	public String getTbuUid() {
		return tbuUid;
	}

	public void setTbuUid(String tbuUid) {
		this.tbuUid = tbuUid;
	}
}
