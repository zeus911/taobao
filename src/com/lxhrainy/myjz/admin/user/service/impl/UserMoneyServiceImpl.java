package com.lxhrainy.myjz.admin.user.service.impl;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.core.utils.AESUtil;
import com.lxhrainy.myjz.admin.user.dao.IUserMoneyDao;
import com.lxhrainy.myjz.admin.user.model.UserMoney;
import com.lxhrainy.myjz.admin.user.service.IUserMoneyService;


/**
 * 用户账户信息服务实现类
 * @author xueyunteng
 * @date 2016-05-23
 */

@Service
@Transactional(readOnly = true)
public class UserMoneyServiceImpl extends
AbstractBaseServiceImpl<IUserMoneyDao, UserMoney, Integer>
implements IUserMoneyService {
	
	@Autowired
	IUserMoneyDao userMoneyDao;

	@Override
	public UserMoney getByUserId(Integer userid) {
		return userMoneyDao.getByUserId(userid);
	}

	@Override
	@Transactional(readOnly = false)
	public boolean updateStatusByUserId(UserMoney model) {
		int result = userMoneyDao.updateStatusByUserId(model);
		if(result != -1){
			return true;
		}
		return false;
	}
	
	/**
	 * @Description: 更新交易密码
	 * @param userid
	 * @param newPassword
	 * @return 1 成功 -1密码错误
	 */
	@Transactional(readOnly = false)
	public int updatePaypassword(int userid ,String oldPassword , String newPassword) {
		if(!this.validatePaypassword(userid,oldPassword)){
			return -1;
		}
		
		userMoneyDao.updatePaypassword(userid,encrptPassword(newPassword));
		return 1;
	}
	
	/**
	 * @Description: 验证交易密码是否正确
	 * @param userid 用户
	 * @param paypassword 交易密码
	 * @return boolean    返回类型 
	 */
	public boolean validatePaypassword(int userid, String paypassword) {
		paypassword = encrptPassword(paypassword);
		if(StringUtils.isEmpty(paypassword)){
			return false;
		}
		
		UserMoney money = this.getByUserId(userid);
		if(money.getPaypassword().equals(paypassword)){
			return true;
		}
		
		return false;
	}
	
	/**
	 * 加密密码
	 * @param password
	 * @return
	 */
	public static String encrptPassword(String password) {
		try {
			return AESUtil.encrptString(password, "1234567812345678");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
	
	/**
	 * 冻结金额
	 * @param money 提现金额
	 * @param moneyInfo
	 * @return 1 成功
	 * 		-1 可用余额不足
	 */
	@Transactional(readOnly = false)
	public int frozonMoney(UserMoney moneyInfo,double money) {
		
		Double useableMoney = moneyInfo.getUsablebalance();
		//可用金额判断
		if(useableMoney < money){
			return -1;
		}
		
		//更新可用金额
		useableMoney = useableMoney - money;
		moneyInfo.setUsablebalance(useableMoney);
		moneyInfo.setFrozenbalance(moneyInfo.getFrozenbalance()+money);
		this.update(moneyInfo);
		return 1;
	}
	
	/**
	 * 对应用户账户进行加指定金额
	 * @param userid
	 * @param money
	 * @return
	 */
	@Transactional(readOnly = false)
	public void recharge(int userid,double money) {
		dao.addMoney(userid,money);
	}
	
	/**
	 * 对应用户账户进行扣除指定金额(扣除总金额和冻结金额)
	 * @param userid
	 * @param money
	 * @return
	 */
	@Transactional(readOnly = false)
	public void withdrawls(int userid, double money){
		dao.subBothMoney(userid,money);
	}
}
