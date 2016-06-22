package com.lxhrainy.core.sys.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.core.sys.dao.ISysDictDao;
import com.lxhrainy.core.sys.model.SysDict;
import com.lxhrainy.core.sys.service.ISysDictService;

/**
 * @ClassName: OrderServiceImpl 
 * @Description: 订单Service实现类
 * @author lxhrainy 
 * @date 2016年5月20日 上午11:32:34
 */
@Service("sysDictService")
@Transactional(readOnly = true)
public class SysDictImpl extends AbstractBaseServiceImpl<ISysDictDao, SysDict, Integer>
	implements ISysDictService{
	
}
