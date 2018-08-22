package com.dh.app.service;

import java.util.HashMap;
import java.util.List;

/**
 * @Class Name : AppService.interface
 * @Description : System 비즈니스 구현 클래스 
 * @Modification Information
 * @
 * @  수정일         수정자                   수정내용
 * @ -------    --------    ---------------------------
 * @ 2018.07.14    hwanee   최초 생성
 *
 *  
 */

public interface AppService {
	
	public void addVend(HashMap<String, String> map) throws Exception;
	
	public void addMaterial(HashMap<String, Object> map) throws Exception;
	
	public List<HashMap<String,String>> searchVendList() throws Exception;
	
	public List<HashMap<String,String>> searchMaterialList() throws Exception;
}
