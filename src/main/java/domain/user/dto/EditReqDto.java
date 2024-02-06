package domain.user.dto;

import lombok.Data;

@Data
public class EditReqDto {
	private int userNum;
	private String id;
	private String pass;
	private String email;
	private String name;
	private int telnum;
	private String address;
}
