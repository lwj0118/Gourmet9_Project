package domain.user;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class User {
	private int userNum; 
	private String id;
	private String pass;
	private String email;
	private int telnum;
	private String name;
	private String address;
	private Date regidate; 
}

