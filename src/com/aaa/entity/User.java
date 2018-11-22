package com.aaa.entity;



public class User {

	private Integer cid;
	private String cname;
	private String pwd;
	private Integer eid;
	private String operation;
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public Integer getEid() {
		return eid;
	}
	public void setEid(Integer eid) {
		this.eid = eid;
	}
	public String getOperation() {
		return operation;
	}
	public void setOperation(String operation) {
		this.operation = operation;
	}
	
	@Override
	public String toString() {
		return "User [cid=" + cid + ", cname=" + cname + ", pwd=" + pwd
				+ ", eid=" + eid + ", operation=" + operation + "]";
	}
	
	
}
