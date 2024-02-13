package domain.store.dao;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import config.DBConnection;

import domain.store.dto.StoreDto;


public class StoreDao {
	
	public int stregi(StoreDto dto) {
		int result = 0; 
		
		Connection conn = DBConnection.getConnection();
		String query = "insert into store(storeNum, stname, address, sttel, rate, category, info, image)"
				+ " values(store_seq.nextval, ?,?,?,?,?,?,?)";
		PreparedStatement psmt = null;
		try {
			psmt = conn.prepareStatement(query);
			psmt.setString(1, dto.getStname());
			psmt.setString(2, dto.getAddress());
			psmt.setInt(3, dto.getSttel());
			psmt.setInt(4, dto.getRate());
			psmt.setString(5, dto.getCategory());
			psmt.setString(6, dto.getInfo());
			psmt.setString(7, dto.getImage());
			result = psmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
		
	}
	public List<StoreDto> findAll(int page) {
		List<StoreDto> stores = new ArrayList<StoreDto>();
		String query = "select * from (select TD.*, rownum as rnum from"
				+ " (select * from store order by storeNum desc) TD)"
				+ " where rnum between ? and ?";
		Connection conn = DBConnection.getConnection();
		PreparedStatement psmt;
		ResultSet rs;
		int start = (page*9)+1;
		int end = (page*9)+9;
		System.out.println("start : " + start);
		System.out.println("end : " + end);
		
		try {
			psmt = conn.prepareStatement(query);
			psmt.setInt(1, start);
			psmt.setInt(2, end);
			rs = psmt.executeQuery();
			while(rs.next()) {
				StoreDto store = new StoreDto();
				store = StoreDto.builder()
						.storeNum(rs.getInt("storeNum"))
						.stname(rs.getString("stname"))
						.address(rs.getString("address"))
						.sttel(rs.getInt("sttel"))
						.rate(rs.getInt("rate"))
						.category(rs.getString("category"))
						.info(rs.getString("info"))
						.image(rs.getString("image"))
						.regidate(rs.getDate("regidate"))
						.build(); 
					stores.add(store);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return stores;		
	}
	
	public int count() {
		int result = 0;
		Connection conn = DBConnection.getConnection();
		String query = "select count(*) from store";
		Statement stmt;
		try {
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			if(rs.next()) {
				result = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result; 
	}
	
	//1개 조회 
	public StoreDto findbynum(int num) {
		StoreDto dto = new StoreDto();
		String query = "select * from store where storeNum="+num;
		Connection conn = DBConnection.getConnection();
		Statement stmt ;
		ResultSet rs;
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query); 
			if(rs.next()) {
				dto.setStoreNum(rs.getInt("storeNum"));
				dto.setStname(rs.getString("stname"));
				dto.setAddress(rs.getString("address"));
				dto.setSttel(rs.getInt("sttel"));
				dto.setRate(rs.getInt("rate"));
				dto.setCategory(rs.getString("category"));
				dto.setInfo(rs.getString("info"));
				dto.setImage(rs.getString("image"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dto; 
	}
	//삭제 
	public int delete(int num) {
		int result = 0;
		String query = "delete from store where storeNum=?";
		Connection conn = DBConnection.getConnection();
		PreparedStatement psmt;
		try {
			psmt = conn.prepareStatement(query);
			psmt.setInt(1, num);
			result = psmt.executeUpdate(); 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	//가게수정
	public int update(StoreDto dto) {				
		int result =0;
		Connection conn = DBConnection.getConnection();
		String query = "update store set"
				+ " stname=?, address=?, sttel=?, rate=?, category=?, info=?, image=?"
				+ " where storeNum=?";
		PreparedStatement psmt = null;
		
		
		try {
			psmt = conn.prepareStatement(query);
			psmt.setString(1, dto.getStname());
			psmt.setString(2, dto.getAddress());
			psmt.setInt(3, dto.getSttel());
			psmt.setInt(4, dto.getRate());
			psmt.setString(5, dto.getCategory());
			psmt.setString(6, dto.getInfo());
			psmt.setString(7, dto.getImage());
			psmt.setInt(8, dto.getStoreNum());
			result = psmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
}

