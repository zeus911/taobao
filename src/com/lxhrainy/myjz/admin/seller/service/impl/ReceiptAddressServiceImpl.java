package com.lxhrainy.myjz.admin.seller.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.seller.dao.IReceiptAddressDao;
import com.lxhrainy.myjz.admin.seller.model.ReceiptAddress;
import com.lxhrainy.myjz.admin.seller.service.IReceiptAddressService;


/**
 * 收获地址服务实现类
 * @author xueyunteng
 * @date 2016-07-05
 */

@Service
@Transactional(readOnly = true)
public class ReceiptAddressServiceImpl extends
AbstractBaseServiceImpl<IReceiptAddressDao, ReceiptAddress, Integer>
implements IReceiptAddressService {

	@Autowired 
	IReceiptAddressDao dao;
	
	/**
	 * 删除指定状态地址
	 * @param status
	 */
	@Transactional(readOnly = false)
	public int deleteByStatus(int status) {
		return dao.deleteByStatus(status);
	}
	
}
