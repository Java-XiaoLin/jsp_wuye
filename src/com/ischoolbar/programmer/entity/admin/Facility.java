package com.ischoolbar.programmer.entity.admin;

import org.springframework.stereotype.Component;

/**
 * 公共设施实体类
 * @author liqingyang
 *
 */
@Component
public class Facility {
	
	private Long  fac_id;//设施ID，设置自增长
	private String fac_name;//设施名称
	private String fac_count;//投入数量
	private String startTime;//开始时间
	private int status;//状态，0:未投入 1:投入		
	public Long getFac_id() {
		return fac_id;
	}
	public void setFac_id(Long fac_id) {
		this.fac_id = fac_id;
	}
	public String getFac_name() {
		return fac_name;
	}
	public void setFac_name(String fac_name) {
		this.fac_name = fac_name;
	}
	public String getFac_count() {
		return fac_count;
	}
	public void setFac_count(String fac_count) {
		this.fac_count = fac_count;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	

}
