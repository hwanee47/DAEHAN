package com.dh.app.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;

import com.dh.app.dao.AppDAO;
import com.dh.common.dao.AbstractDAO;

/**
 * @Class Name : AppDAOImpl.java
 * @Description : AppDAOImpl
 * @Modification Information
 * @
 * @  수정일         수정자                   수정내용
 * @ -------    --------    ---------------------------
 * @ 2018.07.15    hwanee          최초 생성
 *
 *  
 */

@Repository
public class AppDAOImpl extends AbstractDAO implements AppDAO {

	private static final Logger logger = Logger.getLogger(AppDAOImpl.class);
	

	@Override
	public void insertVend(HashMap<String, String> map) throws Exception {
		insert("App.insertVend", map);
	}


	@Override
	public List<HashMap<String, String>> selectVendList() throws Exception {
		return (List<HashMap<String,String>> ) selectList("App.selectVendList");
	}


	@Override
	public void insertMaterial(HashMap<String, Object> map) throws Exception {
		insert("App.insertMaterial", map);
	}


	@Override
	public List<HashMap<String, String>> selectMaterialList() throws Exception {
		return (List<HashMap<String,String>> ) selectList("App.selectMaterialList");
	}

	
}
