package service;

import java.util.List;

import domain.store.dao.StoreDao;

import domain.store.dto.StoreDto;

import lombok.Data;

@Data
public class StoreService {
	private StoreDao storeDao = new StoreDao();
	
	public int regi(StoreDto dto) {
		return storeDao.stregi(dto); 
	}
	public List<StoreDto> stlist(int page) {
		return storeDao.findAll(page);
	}
	public int sttotal() {
		return storeDao.count();
	}
	//삭제
	public int delete(int num) {
		return storeDao.delete(num);
	}
	
	
	//상세보기
	public StoreDto info(int num) {
		this.storeDao = new StoreDao();
		return storeDao.findbynum(num);
	}
	
	
	//수정
	public int edit(StoreDto dto) {
			return storeDao.update(dto);
		}
	
}
