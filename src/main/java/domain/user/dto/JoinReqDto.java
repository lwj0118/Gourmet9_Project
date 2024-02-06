package domain.user.dto;

import lombok.Data;

@Data
public class JoinReqDto {
	private String userId;
	private String pass;
	private String email;
	private String name;
	private int telnum;
	private String address;
}
