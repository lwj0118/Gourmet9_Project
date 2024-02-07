package domain.store.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import config.DBConnection;
import domain.store.dto.StoreDto;
import domain.user.User;
import domain.user.dto.EditReqDto;
import domain.user.dto.JoinReqDto;
import domain.user.dto.LoginReqDto;

public class StoreDao {
	
	public int stregi(StoreDto dto) {
		int result = 0; 
		
		Connection conn = DBConnection.getConnection();
		String query = "insert into store(storeNum, stname, address, sttel, rate, category, info)"
				+ " values(store_seq.nextval, ?,?,?,?,?,?)";
		PreparedStatement psmt = null;
		try {
			psmt = conn.prepareStatement(query);
			psmt.setString(1, dto.getStname());
			psmt.setString(2, dto.getAddress());
			psmt.setInt(3, dto.getSttel());
			psmt.setInt(4, dto.getRate());
			psmt.setString(5, dto.getCategory());
			psmt.setString(6, dto.getInfo());
			result = psmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
		
	}
	
}
