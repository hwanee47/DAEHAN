package com.dh.app.dao;

import java.util.HashMap;
import java.util.List;

/**
 * @Class Name : AppDAO.interface
 * @Description : AppDAO
 * @Modification Information
 * @
 * @  수정일         수정자                   수정내용
 * @ -------    --------    ---------------------------
 * @ 2018.07.14    hwanee   최초 생성
 *
 *  
 */

public interface AppDAO {
	public void insertVend(HashMap<String, String> map) throws Exception;
	
	public void insertMaterial(HashMap<String, Object> map) throws Exception;
	
	public List<HashMap<String,String>> selectVendList() throws Exception;
	
	public List<HashMap<String,String>> selectMaterialList() throws Exception;
}
