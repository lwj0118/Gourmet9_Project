package domain.user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import config.DBConnection;
import domain.user.User;
import domain.user.dto.EditReqDto;
import domain.user.dto.JoinReqDto;
import domain.user.dto.LoginReqDto;

public class UserDao {
	//회원가입, 회원수정, 아이디 중복체크, 로그인
	//로그인
	public User findByusernameAndPassword(LoginReqDto dto) {
		User user = null;
		Connection conn = DBConnection.getConnection();
		String query = "select * from member where id=? and pass=?";
		PreparedStatement psmt = null;
		ResultSet rs = null;
		try {
			psmt = conn.prepareStatement(query);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPass());
			rs = psmt.executeQuery();
			if(rs.next()) {
				user = User.builder()
						.userNum(rs.getInt("userNum"))
						.id(rs.getString("Id"))
						.pass(rs.getString("pass"))
						.email(rs.getString("email"))
						.name(rs.getString("name"))
						.telnum(rs.getInt("telnum"))
						.address(rs.getString("address"))
						.build();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	}
	public int save(JoinReqDto dto) {				//회원가입
		int result =0;
		Connection conn = DBConnection.getConnection();
		String query = "insert into member(userNum, Id, pass, email, name, telnum, address)"
				+ " values(user_seq.nextval,?,?,?,?,?,?)";
		PreparedStatement psmt = null;
		try {
			psmt = conn.prepareStatement(query);
			psmt.setString(1, dto.getUserId());
			psmt.setString(2, dto.getPass());
			psmt.setString(3, dto.getEmail());
			psmt.setString(4, dto.getName());
			psmt.setInt(5, dto.getTelnum());
			psmt.setString(6, dto.getAddress());
			result = psmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	public int findById(String Id) {				//회원정보찾기 - 로그인
		int result = 0;
		//1. 접속 2. 쿼리작성, 쿼리객체생성, 인파라미터 채우기 3. 쿼리실행
		Connection conn = DBConnection.getConnection();
		String query = "select * from member where id=?";
		PreparedStatement psmt = null;
		ResultSet rs = null;
		try {
			psmt = conn.prepareStatement(query);
			psmt.setString(1, Id);
			rs = psmt.executeQuery();
			if(rs.next()) {
				result = 1;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	//회원정보조회
	public User findByNum(int num) {
		Connection conn = DBConnection.getConnection();
		String query = "select * from member where userNum=?";
		User user = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		try {
			psmt = conn.prepareStatement(query);
			psmt.setInt(1, num);
			rs = psmt.executeQuery();
			if(rs.next()) {
				user = User.builder()
						.userNum(rs.getInt("userNum"))
						.id(rs.getString("Id"))
						.pass(rs.getString("pass"))
						.email(rs.getString("email"))
						.name(rs.getString("name"))
						.telnum(rs.getInt("telnum"))
						.address(rs.getString("address"))
						.build();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	}
	public int update(EditReqDto dto) {				//회원수정
		int result =0;
		Connection conn = DBConnection.getConnection();
		String query = "update member set"
				+ " pass=?, email=?, name=?, telnum=?, address=?"
				+ " where userNum=?";
		PreparedStatement psmt = null;
		try {
			psmt = conn.prepareStatement(query);
			psmt.setString(1, dto.getPass());
			psmt.setString(2, dto.getEmail());
			psmt.setString(3, dto.getName());
			psmt.setInt(4, dto.getTelnum());
			psmt.setString(5, dto.getAddress());
			psmt.setInt(6, dto.getUserNum());
			result = psmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
		
}
