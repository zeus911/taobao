package com.lxhrainy.myjz.admin.task.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.task.dao.ITaskComboPropertiesDao;
import com.lxhrainy.myjz.admin.task.model.TaskComboProperties;
import com.lxhrainy.myjz.admin.task.service.ITaskComboPropertiesService;


/**
 * 任务套餐服务实现类
 * @author xueyunteng
 * @date 2016-06-23
 */

@Service
@Transactional(readOnly = true)
public class TaskComboPropertiesServiceImpl extends
AbstractBaseServiceImpl<ITaskComboPropertiesDao, TaskComboProperties, Integer>
implements ITaskComboPropertiesService {

}
