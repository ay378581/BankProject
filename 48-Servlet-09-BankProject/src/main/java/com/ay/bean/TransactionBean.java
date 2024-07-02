package com.ay.bean;

import java.io.Serializable;
import java.sql.Date;

public class TransactionBean implements Serializable {
	private int id;
	private String senderName;
	private String receiverName;
	private Long senderAccNumber;
	private Long receiverAccNumber;
	private double transactionAmount;
	private Date transactionDate;

	public int getId() {
		return id;
	}

	public Date getTransactionDate() {
		return transactionDate;
	}

	public void setTransactionDate(Date transactionDate) {
		this.transactionDate = transactionDate;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSenderName() {
		return senderName;
	}

	public void setSenderName(String senderName) {
		this.senderName = senderName;
	}

	public String getReceiverName() {
		return receiverName;
	}

	public void setReceiverName(String receiverName) {
		this.receiverName = receiverName;
	}

	public Long getSenderAccNumber() {
		return senderAccNumber;
	}

	public void setSenderAccNumber(Long senderAccNumber) {
		this.senderAccNumber = senderAccNumber;
	}

	public Long getReceiverAccNumber() {
		return receiverAccNumber;
	}

	public void setReceiverAccNumber(Long receiverAccNumber) {
		this.receiverAccNumber = receiverAccNumber;
	}

	public double getTransactionAmount() {
		return transactionAmount;
	}

	public void setTransactionAmount(double transactionAmount) {
		this.transactionAmount = transactionAmount;
	}

	@Override
	public String toString() {
		return "TransactionBean [id=" + id + ", senderName=" + senderName + ", receiverName=" + receiverName
				+ ", senderAccNumber=" + senderAccNumber + ", receiverAccNumber=" + receiverAccNumber
				+ ", transactionAmount=" + transactionAmount + ", transactionDate=" + transactionDate + "]";
	}

}
