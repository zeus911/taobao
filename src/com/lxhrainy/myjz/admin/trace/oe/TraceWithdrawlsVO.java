package com.lxhrainy.myjz.admin.trace.oe;

import java.util.Date;

import com.lxhrainy.core.common.oe.BaseVO;
import com.lxhrainy.myjz.admin.trace.model.TraceWithdrawls;

public class TraceWithdrawlsVO extends BaseVO {

	private TraceWithdrawls model;

	private Integer offsetid;

	private Integer count;

	private Date beginTime;

	private Date endTime;

	public Date getBeginTime() {
		return beginTime;
	}

	public void setBeginTime(Date beginTime) {
		this.beginTime = beginTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public TraceWithdrawls getModel() {
		return model;
	}

	public void setModel(TraceWithdrawls model) {
		this.model = model;
	}

	public Integer getOffsetid() {
		return offsetid;
	}

	public void setOffsetid(Integer offsetid) {
		this.offsetid = offsetid;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

}
