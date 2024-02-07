package service;

import domain.store.dao.StoreDao;
import domain.store.dto.StoreDto;
import lombok.Data;

@Data
public class StoreService {
	private StoreDao storeDao = new StoreDao();
	
	public int regi(StoreDto dto) {
		return storeDao.stregi(dto); 
	}
}
