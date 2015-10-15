package com.shieldsquare.services;

import java.util.ArrayList;

import com.shieldsquare.model.IPDelete;

public interface DeleteIP_DAO {

	public ArrayList<IPDelete>deleteIPfromTable(int sid,String ip_add,String R1,String R2,String R4,String R5,String A1,String Active);
	
}
