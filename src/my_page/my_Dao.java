package my_page;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import db.DBClose;
import db.DBconnection;
import dto.member_Dto;

public class my_Dao implements imy_Dao {

	private static my_Dao dao = new my_Dao();
	
	private my_Dao() {
		DBconnection.initConnect();
	}
	public static my_Dao getInstance() {
		return dao;
		
	}
	
	@Override
	public boolean addMember(member_Dto dto) {
		String sql = " INSERT INTO SEMI_MEMBER "
				+ " (ID, PWD, NAME, ADDRESS, EMAIL, PHONE, AUTH) "
				+ " VALUES(?, ?, ?, ?, ?, ?, 0) ";
		
		Connection conn = null;
		PreparedStatement psmt = null;
		
		int count = 0;
		
		try {
			conn = DBconnection.getConnection();
			System.out.println("1/6 addMember suc");
			
			psmt = conn.prepareStatement(sql);
			System.out.println("2/6 addMember suc");
			System.out.println(dto.toString());
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPwd());
			psmt.setString(3, dto.getName());
			psmt.setString(4, dto.getAddress());
			psmt.setString(5, dto.getEmail());
			psmt.setString(6, dto.getPhone());
			
			count = psmt.executeUpdate();
			System.out.println("3/6 addMember suc");
						
		} catch (SQLException e) {		
			System.out.println("addMember fail");
			e.printStackTrace();
		} finally {
			DBClose.close(conn, psmt, null);
		}
				
		return count>0?true:false;
	}

	@Override
	public boolean getId(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public member_Dto login(member_Dto dto) {
		String sql = " SELECT ID, PWD, NAME, ADDRESS, EMAIL, PHONE, AUTH "
				+ " FROM SEMI_MEMBER "
				+ " WHERE ID=? AND PWD=? ";
		
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
		member_Dto mem = null;
		
		try {
			conn = DBconnection.getConnection();
			psmt = conn.prepareStatement(sql);
			System.out.println("1/6 login suc");
			
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPwd());
			
			System.out.println("2/6 login suc");
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				String id = rs.getString(1);
				String pwd = rs.getString(2);
				String name = rs.getString(3);
				String address = rs.getString(4);
				String email = rs.getString(5);
				String phone = rs.getString(6);
				String auth = rs.getString(7);
				mem = new member_Dto(id, pwd, name, email, phone, address, auth);				
			}
			
			System.out.println("3/6 login suc");
			
		} catch (SQLException e) {
			System.out.println("login fail");
			e.printStackTrace();
		} finally {
			DBClose.close(conn, psmt, rs);			
		}
				
		return mem;
	}

}
