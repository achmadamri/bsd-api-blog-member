package com.api.blog.member.service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.ExampleMatcher;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.api.blog.member.db.entity.TbUser;
import com.api.blog.member.db.entity.TbUserMarket;
import com.api.blog.member.db.entity.ViewUserBrand;
import com.api.blog.member.db.entity.ViewUserMenu;
import com.api.blog.member.db.repository.TbUserBrandRepository;
import com.api.blog.member.db.repository.TbUserMarketRepository;
import com.api.blog.member.db.repository.TbUserMenuRepository;
import com.api.blog.member.db.repository.TbUserRepository;
import com.api.blog.member.db.repository.ViewUserBrandRepository;
import com.api.blog.member.db.repository.ViewUserMenuRepository;
import com.api.blog.member.model.auth.PostAddRequestModel;
import com.api.blog.member.model.auth.PutUpdateRequestModel;
import com.api.blog.member.model.user.GetUserListRequestModel;
import com.api.blog.member.model.user.GetUserListResponseModel;
import com.api.blog.member.model.user.GetUserMenuListRequestModel;
import com.api.blog.member.model.user.GetUserMenuListResponseModel;
import com.api.blog.member.model.user.GetUserRequestModel;
import com.api.blog.member.model.user.GetUserResponseModel;
import com.api.blog.member.model.user.PostUserAddRequestModel;
import com.api.blog.member.model.user.PostUserAddResponseModel;
import com.api.blog.member.model.user.PostUserChangePasswordRequestModel;
import com.api.blog.member.model.user.PostUserChangePasswordResponseModel;
import com.api.blog.member.model.user.PostUserEditRequestModel;
import com.api.blog.member.model.user.PostUserEditResponseModel;
import com.api.blog.member.util.MD5;
import com.api.blog.member.util.SimpleMapper;
import com.api.blog.member.util.TokenUtil;
import com.api.blog.member.util.Uid;

@Service
public class UserService {

	private Logger log = LoggerFactory.getLogger(UserService.class);
	
	@Autowired
	private Environment env;
	
	@Autowired
	private TokenUtil tokenUtil;
	
	@Autowired
	private TbUserRepository tbUserRepository;
	
	@Autowired
	private TbUserBrandRepository tbUserBrandRepository;
	
	@Autowired
	private TbUserMenuRepository tbUserMenuRepository;
	
	@Autowired
	private ViewUserMenuRepository viewUserMenuRepository;
	
	@Autowired
	private ViewUserBrandRepository viewUserBrandRepository;
	
	@Autowired
	private TbUserMarketRepository tbUserMarketRepository;
	
	public GetUserResponseModel getUser(String tbuId, GetUserRequestModel requestModel) throws Exception {
		GetUserResponseModel responseModel = new GetUserResponseModel(requestModel);
		
		tokenUtil.claims(requestModel);
		
		TbUser exampleTbUser = new TbUser();
		
		if (tbuId.equals("")) {
			exampleTbUser.setTbuEmail(requestModel.getEmail());
		} else {
			exampleTbUser.setTbuId(Integer.valueOf(tbuId));
		}
		
		Optional<TbUser> optTbUser = tbUserRepository.findOne(Example.of(exampleTbUser));
		
		if (optTbUser.isPresent()) {
			responseModel.setTbUser(optTbUser.get());
			
			ViewUserMenu exampleViewUserMenu = new ViewUserMenu();
			exampleViewUserMenu.setTbuId(optTbUser.get().getTbuId());
			List<ViewUserMenu> lstViewUserMenu = viewUserMenuRepository.findAll(Example.of(exampleViewUserMenu), Sort.by("tbmName").ascending());
			responseModel.setLstViewUserMenu(lstViewUserMenu);
			
			TbUserMarket exampleTbUserMarket = new TbUserMarket();
			exampleTbUserMarket.setTbuId(optTbUser.get().getTbuId());
			List<TbUserMarket> lstTbUserMarket = tbUserMarketRepository.findAll(Example.of(exampleTbUserMarket), Sort.by("tbumId").ascending());
			responseModel.setLstTbUserMarket(lstTbUserMarket);
			
			ViewUserBrand exampleViewUserBrand = new ViewUserBrand();
			exampleViewUserBrand.setTbuId(optTbUser.get().getTbuId());
			List<ViewUserBrand> lstViewUserBrand = viewUserBrandRepository.findAll(Example.of(exampleViewUserBrand), Sort.by("tbbBrand").ascending());
			responseModel.setLstViewUserBrand(lstViewUserBrand);
			
			responseModel.setStatus("200");
			responseModel.setMessage("User ok");
		} else {
			responseModel.setStatus("404");
			responseModel.setMessage("Not found");
		}
		
		return responseModel;
	}
	
	public GetUserListResponseModel getUserList(String tbuEmail, String tbuFirstname, String tbuLastname, String length, String pageSize, String pageIndex, GetUserListRequestModel requestModel) throws Exception {
		GetUserListResponseModel responseModel = new GetUserListResponseModel(requestModel);
		
		tokenUtil.claims(requestModel);
		
		TbUser exampleTbUser = new TbUser();
		exampleTbUser.setTbuEmail(requestModel.getEmail());
		exampleTbUser.setTbuStatus(TbUserRepository.Active);
		Optional<TbUser> optTbUser = tbUserRepository.findOne(Example.of(exampleTbUser));
		
		if (optTbUser.isPresent()) {
			ExampleMatcher matcher = ExampleMatcher.matching()
				.withMatcher("tbuEmail", ExampleMatcher.GenericPropertyMatchers.contains().ignoreCase())
				.withMatcher("tbuFirstname", ExampleMatcher.GenericPropertyMatchers.contains().ignoreCase())
				.withMatcher("tbuLastname", ExampleMatcher.GenericPropertyMatchers.contains().ignoreCase())
				;
	
			exampleTbUser = new TbUser();
			exampleTbUser.setTbuEmail(tbuEmail);
			exampleTbUser.setTbuFirstname(tbuFirstname);
			exampleTbUser.setTbuLastname(tbuLastname);
			
			Page<TbUser> pgTbUser = tbUserRepository.findAll(Example.of(exampleTbUser, matcher), PageRequest.of(Integer.valueOf(pageIndex), Integer.valueOf(pageSize), Sort.by("tbuId").ascending()));
			
			if (pgTbUser.toList().size() > 0) {
				List<TbUser> lstTbUser = pgTbUser.toList();
				responseModel.setLstTbUser(lstTbUser);
				
				responseModel.setLength(tbUserRepository.count(Example.of(exampleTbUser, matcher)));
				
				responseModel.setStatus("200");
				responseModel.setMessage("Get User List ok");
			} else {
				responseModel.setStatus("404");
				responseModel.setMessage("Not found");
			}
		} else {
			responseModel.setStatus("404");
			responseModel.setMessage("Not found");			
		}
		
		return responseModel;
	}
	
	public GetUserMenuListResponseModel getUserMenuList(String tbuEmail, GetUserMenuListRequestModel requestModel) throws Exception {
		GetUserMenuListResponseModel responseModel = new GetUserMenuListResponseModel(requestModel);
		
		tokenUtil.claims(requestModel);
		
		TbUser exampleTbUser = new TbUser();
		exampleTbUser.setTbuEmail(requestModel.getEmail());
		exampleTbUser.setTbuStatus(TbUserRepository.Active);
		Optional<TbUser> optTbUser = tbUserRepository.findOne(Example.of(exampleTbUser));
		
		if (optTbUser.isPresent()) {
			ViewUserMenu exampleViewUserMenu = new ViewUserMenu();	
			exampleViewUserMenu.setTbuEmail(tbuEmail.equals("") ? "admin@mail.com" : tbuEmail);
			
			List<ViewUserMenu> lstViewUserMenu = viewUserMenuRepository.findAll(Example.of(exampleViewUserMenu), Sort.by("tbmSort").ascending());
			
			if (tbuEmail.equals("")) {
				for (ViewUserMenu viewUserMenu : lstViewUserMenu) {
					viewUserMenu.setTbumAdd(0);
					viewUserMenu.setTbumEdit(0);
					viewUserMenu.setTbumDelete(0);
					viewUserMenu.setTbumView(0);
				}
			}
			
			responseModel.setLstViewUserMenu(lstViewUserMenu);
			
			responseModel.setStatus("200");
			responseModel.setMessage("Get User Menu List ok");
		} else {
			responseModel.setStatus("404");
			responseModel.setMessage("Not found");
		}
		
		return responseModel;
	}
	
	public PostUserAddResponseModel postUserAdd(PostUserAddRequestModel requestModel) throws Exception {
		PostUserAddResponseModel responseModel = new PostUserAddResponseModel(requestModel);
		
		tokenUtil.claims(requestModel);
		
		TbUser exampleTbUser = new TbUser();
		exampleTbUser.setTbuEmail(requestModel.getEmail());
		exampleTbUser.setTbuStatus(TbUserRepository.Active);
		Optional<TbUser> optTbUser = tbUserRepository.findOne(Example.of(exampleTbUser));
		
		if (optTbUser.isPresent()) {
			TbUser exampleTbUserNew = new TbUser();
			exampleTbUserNew.setTbuEmail(requestModel.getTbUser().getTbuEmail());
			Optional<TbUser> optTbUserNew = tbUserRepository.findOne(Example.of(exampleTbUserNew));
			
			if (optTbUserNew.isPresent()) {
				responseModel.setStatus("403");
				responseModel.setMessage("Data already exists. Email : " + requestModel.getTbUser().getTbuEmail());
			} else {
				TbUser tbUser = new TbUser();
				tbUser.setTbuEmail(requestModel.getTbUser().getTbuEmail());
				tbUser.setTbuFirstname(requestModel.getTbUser().getTbuFirstname());
				tbUser.setTbuLastname(requestModel.getTbUser().getTbuLastname());
				tbUser.setTbuPassword(new MD5().get(requestModel.getTbUser().getTbuPassword()));
				tbUser.setTbuCreateDate(new Date());
				tbUser.setTbuCreateId(optTbUser.get().getTbuId());
				tbUser.setTbuStatus(TbUserRepository.Active);
				tbUser.setTbuTokenSalt(new Uid().generateString(36));
				tbUser.setTbuRole(requestModel.getTbUser().getTbuRole());
				tbUserRepository.save(tbUser);
				
				RestTemplate restTemplate = new RestTemplate();
				
				PostAddRequestModel postAddRequestModel = new PostAddRequestModel();				
				postAddRequestModel.setEmail(requestModel.getEmail());
				postAddRequestModel.setToken(requestModel.getToken());
				postAddRequestModel.setTbaEmail(tbUser.getTbuEmail());
				postAddRequestModel.setTbaRole(tbUser.getTbuRole());
				postAddRequestModel.setTbaPassword(tbUser.getTbuPassword());
				postAddRequestModel.setTbaStatus(tbUser.getTbuStatus());
				postAddRequestModel.setTbaTokenSalt(tbUser.getTbuTokenSalt());
				postAddRequestModel.setTbaRole(tbUser.getTbuRole());
				HttpEntity<PostAddRequestModel> requestPostAdd = new HttpEntity<>(postAddRequestModel);
				restTemplate.postForEntity(env.getProperty("services.bsd.api.blog.auth") + "auth/postadd", requestPostAdd, String.class);
				
				
				SimpleMapper simpleMapper = new SimpleMapper();
				
				com.api.blog.member.model.post.PostUserAddRequestModel postUserAddOrderRequestModel = new com.api.blog.member.model.post.PostUserAddRequestModel();
				postUserAddOrderRequestModel.setEmail(requestModel.getEmail());
				postUserAddOrderRequestModel.setToken(requestModel.getToken());
				com.api.blog.member.model.post.TbUser postUserAddOrderTbUser = new com.api.blog.member.model.post.TbUser();
				postUserAddOrderTbUser = (com.api.blog.member.model.post.TbUser) simpleMapper.assign(tbUser, postUserAddOrderTbUser);
				postUserAddOrderRequestModel.setTbUser(postUserAddOrderTbUser);
				HttpEntity<com.api.blog.member.model.post.PostUserAddRequestModel> requestPostUserAddOrder = new HttpEntity<>(postUserAddOrderRequestModel);
				restTemplate.postForEntity(env.getProperty("services.bsd.api.blog.post") + "user/postuseradd", requestPostUserAddOrder, String.class);
			}
			
			responseModel.setStatus("200");
			responseModel.setMessage("User created");
		} else {
			responseModel.setStatus("404");
			responseModel.setMessage("Not found");
		}
		
		return responseModel;
	}
	
	public PostUserEditResponseModel postUserEdit(PostUserEditRequestModel requestModel) throws Exception {
		PostUserEditResponseModel responseModel = new PostUserEditResponseModel(requestModel);
		
		tokenUtil.claims(requestModel);
		
		TbUser exampleTbUser = new TbUser();
		exampleTbUser.setTbuEmail(requestModel.getEmail());
		exampleTbUser.setTbuStatus(TbUserRepository.Active);
		Optional<TbUser> optTbUser = tbUserRepository.findOne(Example.of(exampleTbUser));
		
		if (optTbUser.isPresent()) {
			TbUser exampleTbUserExisting = new TbUser();
			exampleTbUserExisting.setTbuEmail(requestModel.getTbUser().getTbuEmail());
			Optional<TbUser> optTbUserExisting = tbUserRepository.findOne(Example.of(exampleTbUserExisting));
			
			if (optTbUserExisting.isPresent()) {
				optTbUserExisting.get().setTbuRole(requestModel.getTbUser().getTbuRole());
				optTbUserExisting.get().setTbuFirstname(requestModel.getTbUser().getTbuFirstname());
				optTbUserExisting.get().setTbuLastname(requestModel.getTbUser().getTbuLastname());				
				
				if (!requestModel.getTbUser().getTbuPassword().equals("")) {
					optTbUserExisting.get().setTbuPassword(new MD5().get(requestModel.getTbUser().getTbuPassword()));	
				}
				
				optTbUserExisting.get().setTbuUpdateDate(new Date());
				optTbUserExisting.get().setTbuUpdateId(optTbUser.get().getTbuId());
				tbUserRepository.save(optTbUserExisting.get());
				
				RestTemplate restTemplate = new RestTemplate();
				
				PutUpdateRequestModel putUpdateRequestModel = new PutUpdateRequestModel();
				putUpdateRequestModel.setTbaRole(optTbUserExisting.get().getTbuRole());
				putUpdateRequestModel.setTbaEmail(optTbUserExisting.get().getTbuEmail());
				putUpdateRequestModel.setTbaPassword(optTbUserExisting.get().getTbuPassword());
				putUpdateRequestModel.setTbaStatus(optTbUserExisting.get().getTbuStatus());
				HttpEntity<PutUpdateRequestModel> requestPutUpdate = new HttpEntity<>(putUpdateRequestModel);
				restTemplate.put(env.getProperty("services.bsd.api.blog.auth") + "auth/putupdate", requestPutUpdate, String.class);
				
				responseModel.setStatus("200");
				responseModel.setMessage("User " + optTbUserExisting.get().getTbuEmail() + " updated");
			} else {
				responseModel.setStatus("404");
				responseModel.setMessage("Not found");
			}
		} else {
			responseModel.setStatus("404");
			responseModel.setMessage("Not found");
		}
		
		return responseModel;
	}
	
	public PostUserChangePasswordResponseModel postUserChangePassword(PostUserChangePasswordRequestModel requestModel) throws Exception {
		PostUserChangePasswordResponseModel responseModel = new PostUserChangePasswordResponseModel(requestModel);
		
		tokenUtil.claims(requestModel);
		
		TbUser exampleTbUser = new TbUser();
		exampleTbUser.setTbuEmail(requestModel.getEmail());
		exampleTbUser.setTbuStatus(TbUserRepository.Active);
		Optional<TbUser> optTbUser = tbUserRepository.findOne(Example.of(exampleTbUser));
		
		if (optTbUser.isPresent()) {
			TbUser exampleTbUserExisting = new TbUser();
			exampleTbUserExisting.setTbuEmail(requestModel.getTbUser().getTbuEmail());
			Optional<TbUser> optTbUserExisting = tbUserRepository.findOne(Example.of(exampleTbUserExisting));
			
			if (optTbUserExisting.isPresent()) {
				optTbUserExisting.get().setTbuPassword(new MD5().get(requestModel.getTbUser().getTbuPassword()));
				optTbUserExisting.get().setTbuUpdateDate(new Date());
				optTbUserExisting.get().setTbuUpdateId(optTbUser.get().getTbuId());
				tbUserRepository.save(optTbUserExisting.get());
				
				RestTemplate restTemplate = new RestTemplate();
				
				PutUpdateRequestModel putUpdateRequestModel = new PutUpdateRequestModel();
				putUpdateRequestModel.setTbaRole(optTbUserExisting.get().getTbuRole());
				putUpdateRequestModel.setTbaEmail(optTbUserExisting.get().getTbuEmail());
				putUpdateRequestModel.setTbaPassword(optTbUserExisting.get().getTbuPassword());
				putUpdateRequestModel.setTbaStatus(optTbUserExisting.get().getTbuStatus());
				HttpEntity<PutUpdateRequestModel> requestPutUpdate = new HttpEntity<>(putUpdateRequestModel);
				restTemplate.put(env.getProperty("services.bsd.api.blog.auth") + "auth/putupdate", requestPutUpdate, String.class);
				
				responseModel.setStatus("200");
				responseModel.setMessage("User change password");
			} else {
				responseModel.setStatus("404");
				responseModel.setMessage("Not found");
			}
		} else {
			responseModel.setStatus("404");
			responseModel.setMessage("Not found");
		}
		
		return responseModel;
	}
}
