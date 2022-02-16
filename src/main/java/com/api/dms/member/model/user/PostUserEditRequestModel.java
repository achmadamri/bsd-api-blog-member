package com.api.dms.member.model.user;

import java.util.List;

import com.api.dms.member.db.entity.TbUser;
import com.api.dms.member.db.entity.TbUserMarket;
import com.api.dms.member.db.entity.ViewUserBrand;
import com.api.dms.member.db.entity.ViewUserMenu;
import com.api.dms.member.model.RequestModel;

public class PostUserEditRequestModel extends RequestModel {
	private TbUser tbUser;

	private List<ViewUserMenu> lstViewUserMenu;

	private List<TbUserMarket> lstTbUserMarket;

	private List<ViewUserBrand> lstViewUserBrand;

	private List<TbMarket> lstTbMarket;

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

	public List<TbMarket> getLstTbMarket() {
		return lstTbMarket;
	}

	public void setLstTbMarket(List<TbMarket> lstTbMarket) {
		this.lstTbMarket = lstTbMarket;
	}
}
