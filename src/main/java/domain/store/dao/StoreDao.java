package domain.store.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import config.DBConnection;
import domain.user.User;
import domain.user.dto.EditReqDto;
import domain.user.dto.JoinReqDto;
import domain.user.dto.LoginReqDto;

public class StoreDao {
	
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
}
