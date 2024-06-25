package com.ay.bean;

import java.io.Serializable;

public class CustomerBean implements Serializable {

	private Long accNo, phone;
	private String custName, accType, cty, state, hNo, mid, sname, pass;
	private Integer custId, pin;
	private Float bal;

	public Long getAccNo() {
		return accNo;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public void setAccNo(Long accNo) {
		this.accNo = accNo;
	}

	public Long getPhone() {
		return phone;
	}

	public void setPhone(Long phone) {
		this.phone = phone;
	}

	public String getCustName() {
		return custName;
	}

	public void setCustName(String custName) {
		this.custName = custName;
	}

	public String getAccType() {
		return accType;
	}

	public void setAccType(String accType) {
		this.accType = accType;
	}

	public String getCty() {
		return cty;
	}

	public void setCty(String cty) {
		this.cty = cty;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String gethNo() {
		return hNo;
	}

	public void sethNo(String hNo) {
		this.hNo = hNo;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public Integer getCustId() {
		return custId;
	}

	public void setCustId(Integer custId) {
		this.custId = custId;
	}

	public Integer getPin() {
		return pin;
	}

	public void setPin(Integer pin) {
		this.pin = pin;
	}

	public Float getBal() {
		return bal;
	}

	public void setBal(Float bal) {
		this.bal = bal;
	}

	@Override
	public String toString() {
		return "CustomerBean [accNo=" + accNo + ", phone=" + phone + ", custName=" + custName + ", accType=" + accType
				+ ", cty=" + cty + ", state=" + state + ", hNo=" + hNo + ", mid=" + mid + ", sname=" + sname
				+ ", custId=" + custId + ", pin=" + pin + ", bal=" + bal + "]";
	}

}
