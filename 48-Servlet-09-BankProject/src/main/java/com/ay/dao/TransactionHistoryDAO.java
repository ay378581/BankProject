package com.ay.dao;

public class TransactionHistoryDAO {

	public /* ArrayList<TransactionBean> */ void sendingHistory(long accNo) {
		
		// select * from transaction_History where sender_accNo = ?
	}
	
	public /* ArrayList<TransactionBean> */ void recivingHistory(long accNo) {
		
		// select * from transaction_History where reciver_accNo = ?
	}
}
