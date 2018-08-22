package com.dh.app.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dh.app.dao.AppDAO;
import com.dh.app.service.AppService;

/**
 * @Class Name : InWarServiceImpl.java
 * @Description : 소재에 관해 처리하는 비즈니스 구현 클래스 
 * @Modification Information
 * @
 * @  수정일         수정자                   수정내용
 * @ -------    --------    ---------------------------
 * @ 2018.01.27    김진환          최초 생성
 *
 *  
 */

@Service("appService")
public class AppServiceImpl  implements AppService{

	@Autowired
	private AppDAO appDAO;
	


	@Override
	public void addVend(HashMap<String, String> map) throws Exception{
		appDAO.insertVend(map);
	}



	@Override
	public List<HashMap<String,String>> searchVendList() throws Exception {
		return appDAO.selectVendList();
	}



	@Override
	public void addMaterial(HashMap<String, Object> map) throws Exception {
		appDAO.insertMaterial(map);
	}



	@Override
	public List<HashMap<String, String>> searchMaterialList() throws Exception {
		return appDAO.selectMaterialList();
	}
	
	
	
	
}
