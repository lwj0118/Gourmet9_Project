package service;

import domain.store.dao.StoreDao;
import lombok.Data;

@Data
public class StoreService {
	private StoreDao storeDao = new StoreDao();
}
