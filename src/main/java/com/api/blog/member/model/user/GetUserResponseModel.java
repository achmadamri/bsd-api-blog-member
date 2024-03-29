package com.api.blog.member.model.user;

import java.util.List;

import com.api.blog.member.db.entity.TbUser;
import com.api.blog.member.db.entity.TbUserMarket;
import com.api.blog.member.db.entity.ViewUserBrand;
import com.api.blog.member.db.entity.ViewUserMenu;
import com.api.blog.member.model.ResponseModel;

public class GetUserResponseModel extends ResponseModel {
	
	public GetUserResponseModel(GetUserRequestModel requestModel) {
		super(requestModel);
	}
	
	private TbUser tbUser;
	
	private List<ViewUserMenu> lstViewUserMenu;
	
	private List<TbUserMarket> lstTbUserMarket;
	
	private List<ViewUserBrand> lstViewUserBrand;
	
	public TbUser getTbUser() {
		return tbUser;
	}

	public List<ViewUserMenu> getLstViewUserMenu() {
		return lstViewUserMenu;
	}

	public void setLstViewUserMenu(List<ViewUserMenu> lstViewUserMenu) {
		this.lstViewUserMenu = lstViewUserMenu;
	}

	public List<TbUserMarket> getLstTbUserMarket() {
		return lstTbUserMarket;
	}

	public void setLstTbUserMarket(List<TbUserMarket> lstTbUserMarket) {
		this.lstTbUserMarket = lstTbUserMarket;
	}

	public List<ViewUserBrand> getLstViewUserBrand() {
		return lstViewUserBrand;
	}

	public void setLstViewUserBrand(List<ViewUserBrand> lstViewUserBrand) {
		this.lstViewUserBrand = lstViewUserBrand;
	}

	public void setTbUser(TbUser tbUser) {
		this.tbUser = tbUser;
	}
}
