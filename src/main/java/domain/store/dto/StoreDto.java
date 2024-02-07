package domain.store.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class StoreDto {
	private int storeNum;
	private String stname;
	private String address;
	private int sttel;
	private int rate;
	private String category;
	private String info;
	private Date regidate;
}
