package com.api.blog.member.model.post;

import com.api.blog.member.model.RequestModel;

public class PostUserChangePasswordRequestModel extends RequestModel {
	private TbUser tbUser;

	public TbUser getTbUser() {
		return tbUser;
	}

	public void setTbUser(TbUser tbUser) {
		this.tbUser = tbUser;
	}
}
