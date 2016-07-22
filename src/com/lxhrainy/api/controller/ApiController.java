package com.lxhrainy.api.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.api.model.ApiParams;
import com.lxhrainy.api.service.IUserApiService;
import com.lxhrainy.api.util.ApiCacheUtil;
import com.lxhrainy.api.util.ApiJSONUtil;
import com.lxhrainy.api.util.ResultJson;
import com.lxhrainy.core.utils.UploadFileUtil;


/**
 * 手机用户相关API的Controller.
 * @author dyno
 */
@Controller
@RequestMapping("/api")
@SuppressWarnings("unchecked")
public class ApiController {
	
	@Autowired
	private IUserApiService userApiService;
	
	@RequestMapping("/test")
	public String test() throws IOException {
		return "api/test";
	}
	
	/**
	 * 获取手机验证码
	 * @param params  手机号码
	 * @param response
	 * @throws IOException 
	 */
	@RequestMapping("/GetInvitation")
	public void getVerity(InputStream inputStream, HttpServletResponse response) throws IOException {
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.getVerity(params);
		this.writeJsonToResponse(rj, response);
	}
	
	/**
	 * 用户注册
	 * @param json :
	 * 		username 用户名（必须）
	 *		password 密码（必须）
	 *		inviter 邀请人账号	
	 *		captcha 验证码（必须）
	 * @param response
	 */
	@RequestMapping("/Sigin" )
	public void register(InputStream inputStream, HttpServletResponse response) {
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.register(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 用户登录
	 * @param json : 
	 * 		username 用户名（必须）
	 * 		password 密码（必须）
	 * @param response
	 */
	@RequestMapping("/Login" )
	public void login(InputStream inputStream, HttpServletResponse response) {
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.login(params,response);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 登出接口
	 * @param response
	 */
	@RequestMapping("/logout" )
	public void logout(HttpServletResponse response) {
		ResultJson rj =new ResultJson();
		ApiCacheUtil.logoutUser();
		rj.setSuccess(true);
		rj.setMessage("登出成功");
		rj.setError_code(ResultJson.SUCCESS);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 绑定推送令牌到账号接口
	 * @param token 令牌(必须）
	 * 			
	 * @param response
	 */
	@RequestMapping("/bindToken" )
	public void bindToken(InputStream inputStream, HttpServletResponse response) {
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.bindToken(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 修改密码
	 * @param params  电话号码
	 * 				      旧密码
	 * 				     新密码
	 * @param response
	 * @throws IOException 
	 */
	@RequestMapping("/changePwd")
	public void changePwd(InputStream inputStream, HttpServletResponse response){
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.changePwd(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 忘记密码
	 * @param params  电话号码,验证码,新密码
	 * @param response
	 * @throws IOException 
	 */
	@RequestMapping("/ForgetPassword")
	public void resetPwd(InputStream inputStream, HttpServletResponse response){
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.resetPwd(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 获取用户账户信息
	 * @param json : 
	 * 		   userid 用户id（必须）
	 * 		   rule 用户身份（必须）0:货主,1:车主
	 * @param response
	 */
	@RequestMapping("/accountInfo" )
	public void accountInfo(InputStream inputStream, HttpServletResponse response) {
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.accountInfo(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 获取用户信息
	  * @param json : 
	  * 		userid 用户id（必须）
	 * 		    rule 用户身份（必须）0:货主,1:车主
	 * @param response
	 */
	@RequestMapping("/UserInfo" )
	public void userInfo(InputStream inputStream, HttpServletResponse response) {
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.userInfo(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 更新用户信息
	  * @param json : 
	  * 		userid 用户id（必须）
	 * 		    rule 用户身份（必须）0:货主,1:车主
	 * @param response
	 */
	@RequestMapping("/updateInfo" )
	public void updateInfo(InputStream inputStream, HttpServletResponse response) {
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.updateInfo(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 认证用户/公司信息
	 * @param json :
	 * 		userid 用户id(必须）
	 * 		1、修改用户联系方式跟姓名
	 * 		   name 真实姓名
	 * 		   contact 联系电话
	 *  	2、用户修改头像信息
	 *  	   iconid  头像id
	 *  	3、用户提交企业认证信息 
	 * 		   enterprise 企业名称
	 * 		   ent_address 公司所在地(省市县)
	 * 		   ent_detail_address 详细地址(街道-路-号)
	 * 		   ent_iconurl 营业执照照片id
	 * 		4、用户提交身份认证信息
	 * 		   identity 身份证号
	 * 		   identity_iconid 身份证照片id
	 * 		   identity_back_iconid 身份证背面照片id
	 * @param response
	 */
	@RequestMapping("/certifiedUser" )
	public void certifiedUser(InputStream inputStream, HttpServletResponse response) {
		Map<String, String> params = ApiJSONUtil.decryptJSON(inputStream, Map.class);
		ResultJson rj = userApiService.certifiedUser(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 提交支付账号密码设置
	 * @param params
	 * @param response
	 */
	@RequestMapping("/payPassword" )
	public void payPassword(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.payPassword(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 银行卡列表
	 * @param params
	 * @param response
	 */
	@RequestMapping("/BankcardList" )
	public void bankcardList(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		//TODO
		ResultJson rj = userApiService.bankcardList(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 绑定银行卡
	 * @param params
	 * @param response
	 */
	@RequestMapping("/BankcardAdd" )
	public void bankcardAdd(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		//TODO
		ResultJson rj = userApiService.bankcardAdd(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	* 解除银行卡
	* @param params
	* @param response
	*/
	@RequestMapping("/BankcardDele" )
	public void bankcardDele(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		//TODO
		ResultJson rj = userApiService.bankcardDele(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 获取提现手续费
	 * @param params
	 * @param response
	 */
	@RequestMapping("/WithdrawFee" )
	public void withdrawFee(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.withdrawFee(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 申请提现
	 * @param params
	 * @param response
	 */
	@RequestMapping("/Withdraw" )
	public void withdrawal(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.withdrawal(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 提现列表
	 * @param params
	 * @param response
	 */
	@RequestMapping("/WithdrawList" )
	public void billList(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		//TODO
		ResultJson rj = userApiService.billList(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 收入列表
	 * @param params
	 * @param response
	 */
	@RequestMapping("/IncomeList" )
	public void incomeList(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		//TODO
		ResultJson rj = userApiService.incomeList(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 获取广告列表
	 * @param params
	 * @param response
	 */
	@RequestMapping("/AdList" )
	public void adlist(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.adlist(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 获取滚动通知列表
	 * @param params
	 * @param response
	 */
	@RequestMapping("/NoticeList")
	public void noticelist(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.noticelist(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 获取消息列表
	 * @param params
	 * @param response
	 */
	@RequestMapping("/MessageList")
	public void msglist(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.msglist(params);
		this.writeJsonToResponse(rj, response);
	}
	
	/**
	 * 消息已读
	 * @param params
	 * @param response
	 */
	@RequestMapping("/MessageRead")
	public void msgread(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.msgread(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 消息删除
	 * @param params
	 * @param response
	 */
	@RequestMapping("/MessageDele")
	public void msgdel(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.msgdel(params);
		this.writeJsonToResponse(rj, response);
	}
	
	/**
	 * 消息通知设置
	 * @param params
	 * @param response
	 */
	@RequestMapping("/MessageSet")
	public void msgset(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.msgset(params);
		this.writeJsonToResponse(rj, response);
	}
	
	/**
	 * 获取系统配置
	 * @param params
	 * @param response
	 */
	@RequestMapping("/Config")
	public void config(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.getSysConfig(params);
		this.writeJsonToResponse(rj, response);
	}
	
	/**
	 * 图片上传
	 * @param request
	 * @param response
	 */
	@RequestMapping("/UploadImage")
	public void uploadimg(HttpServletRequest request, HttpServletResponse response) {
		ResultJson rj = new ResultJson();
		JSONObject result = UploadFileUtil.uploadFile(request);
		if ((boolean) result.get("success")) {
			rj.setSuccess(true);
			rj.setError_code(ResultJson.SUCCESS);
			rj.setMessage("上传成功");
		} else {
			rj.setError_code(ResultJson.ERROR_CODE_API);
			rj.setMessage("上传失败");
		}
		this.writeJsonToResponse(rj, response);
	}
	
	/**
	 * json发送到client
	 * @param object
	 * @param response
	 */
	public void writeJsonToResponse(Object object,HttpServletResponse response) {
		try {
			/*if (object instanceof ResultJson) {
				HttpServletRequest request = ContextHolderUtils.getRequest();
				ResultJson rj = (ResultJson) object;
				TSLog log = new TSLog();
				log.setLogcontent("Method : "+ request.getQueryString() +" ; msg : " + rj.getMessage() + " ; error_code : " + rj.getError_code());
				if (rj.isSuccess()) {
					log.setLoglevel(Globals.Log_Leavel_INFO);
				} else {
					log.setLoglevel(Globals.Log_Leavel_ERROR);
				}
				log.setOperatetype(Globals.Log_Type_OTHER);
				log.setNote(oConvertUtils.getIpAddrByRequest(request));
				UserInfo loginUser = ApiCacheUtil.getLoginUser();
				if (oConvertUtils.isNotEmpty(loginUser)) {
					log.setUsername(loginUser.getUsername());
					log.setBroswer("platform : "+ loginUser.getPlatform() + " ; app :  " + loginUser.getApp());
				} else {
					log.setUsername("系统接口调用");
					log.setBroswer("系统接口调用");
				}
				log.setOperatetime(DateUtils.gettimestamp());
				systemService.save(log);
			}*/
			PrintWriter pw = response.getWriter();
			response.setContentType("application/json;charset=UTF-8");
			pw.write(JSON.toJSONStringWithDateFormat(object, "yyyy-MM-dd HH:mm:ss"));
			pw.flush();
			pw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
