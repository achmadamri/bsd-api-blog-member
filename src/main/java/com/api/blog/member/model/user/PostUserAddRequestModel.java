package com.api.blog.member.model.user;

import com.api.blog.member.db.entity.TbUser;
import com.api.blog.member.model.RequestModel;

public class PostUserAddRequestModel extends RequestModel {
	private TbUser tbUser;
	
	public TbUser getTbUser() {
		return tbUser;
	}

	public void setTbUser(TbUser tbUser) {
		this.tbUser = tbUser;
	}
}
