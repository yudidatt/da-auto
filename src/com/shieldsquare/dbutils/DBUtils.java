package com.shieldsquare.dbutils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtils {

	/*static{
		try{
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			
		}catch(ClassNotFoundException e){
			e.printStackTrace();
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public static Connection getMsSqlConnection()throws SQLException{
		System.out.println("Connecting");
		String url="jdbc:sqlserver://bma9nrxnrv.database.windows.net:1433;databaseName=prod-admin-newdb";
		Connection con=DriverManager.getConnection(url,"ssdb@bma9nrxnrv","SSpassword123!");
	//	System.out.println("Connecting to productions");
		return con;
	
	}
	
	public static Connection getStagingMsSqlConnection()throws SQLException{
		System.out.println("Connecting");
		String url="jdbc:sqlserver://gt2nlewnrh.database.windows.net:1433;databaseName=stag-admin-db";
		Connection con=DriverManager.getConnection(url,"kaalbitec@gt2nlewnrh","shieldsquare@123");
	//	System.out.println("Connecting to Staging");
		return con;
	
	}*/
	
	
	//---------------------------------------------------------------------------------------------------------
	
	
	
	static{
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
		}catch(ClassNotFoundException e){
			e.printStackTrace();
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	
	public static Connection getMySqlConnection()throws SQLException{
		System.out.println("Connecting");
		//String url="jdbc:mysql://173.194.250.247:3306;databaseName=stag-admin-db";
	String url="jdbc:mysql://173.194.243.223:3306/prod-mysql-db";
		//String url="jdbc:mysql://127.0.0.1:3306/stag-admin-db";
		Connection con=DriverManager.getConnection(url,"ssuser","hdfgdbdxfhdxg");
		System.out.println("Connectingmysql");
		return con;
	
	}
	
	
	static{
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
		}catch(ClassNotFoundException e){
			e.printStackTrace();
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public static Connection getMySqlStConnection()throws SQLException{
		System.out.println("Connecting");
		//String url="jdbc:mysql://173.194.250.247:3306;databaseName=stag-admin-db";
	String url="jdbc:mysql://173.194.250.247:3306/stag-admin-db";
		//String url="jdbc:mysql://127.0.0.1:3306/stag-admin-db";
		Connection con=DriverManager.getConnection(url,"ssuser","jnvskjvnksdvnslczfdszv");
		System.out.println("Connectingmysql");
		return con;
	
	}
	
}
