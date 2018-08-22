package com.dh.common;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;

/**
 * @Class Name : ComErrorController.java
 * @Description : 에러페이지처리 클래스 
 * @Modification Information
 * @
 * @  수정일         수정자                   수정내용
 * @ -------    --------    ---------------------------
 * @ 2018.08.12    김진환          최초 생성
 *
 *  
 */
@Controller
@RequestMapping(value= "/com/error")
public class ComErrorController {
	
	
	private static final Logger logger = LoggerFactory.getLogger(ComErrorController.class);
	
	@RequestMapping(value = "/throwable/error.do")
	public String throwable(HttpServletRequest request, ModelMap model) throws Exception{
		logger.info("throwable");
		
		pageErrorLog(request);
		
		model.addAttribute("error_code","THROWABLE");
		model.addAttribute("msg_en","Exception");
		model.addAttribute("msg_ko","예외가 발생하였습니다.");
		
		return "common/error/error";
	}
	
	@RequestMapping(value = "/exception/error.do")
	public String exception(HttpServletRequest request, ModelMap model) throws Exception{
		logger.info("exception");
		
		pageErrorLog(request);
		
		model.addAttribute("error_code","EXCEPTION");
		model.addAttribute("msg_en","Exception");
		model.addAttribute("msg_ko","예외가 발생하였습니다.");
		
		return "common/error/error";
	}
	
	@RequestMapping(value = "/400/error.do")
	public String pageError400(HttpServletRequest request, ModelMap model) throws Exception{
		logger.info("page error code 400");
		
		pageErrorLog(request);
		
		model.addAttribute("error_code","400 Bad request");
		model.addAttribute("msg_en","Your browser sent an invalid request.");
		model.addAttribute("msg_ko","잘못된 요청입니다.");
		
		return "common/error/error";
	}
	
	@RequestMapping(value = "/403/error.do")
	public String pageError403(HttpServletRequest request, ModelMap model) throws Exception{
		logger.info("page error code 403");
		
		pageErrorLog(request);
		
		model.addAttribute("error_code","403 Forbidden");
		model.addAttribute("msg_en","You don't have permission to access.");
		model.addAttribute("msg_ko","접근이 금지되었습니다.");
		
		return "common/error/error";
	}
	
	@RequestMapping(value = "/404/error.do")
	public String pageError404(HttpServletRequest request, ModelMap model) throws Exception{
		logger.info("page error code 404");
		
		pageErrorLog(request);
		
		model.addAttribute("error_code","404 Not found");
		model.addAttribute("msg_en","Sorry, the page you tried cannot be found.");
		model.addAttribute("msg_ko","요청하신 페이지는 존재하지 않습니다.");
		
		return "common/error/error";
	}
	
	@RequestMapping(value = "/405/error.do")
	public String pageError405(HttpServletRequest request, ModelMap model) throws Exception{
		logger.info("page error code 405");
		
		pageErrorLog(request);
		
		model.addAttribute("error_code","405 Not allowed");
		model.addAttribute("msg_en","Method not allowed.");
		model.addAttribute("msg_ko","요청된 메소드가 허용되지 않습니다.");
		
		return "common/error/error";
	}
	
	@RequestMapping(value = "/500/error.do")
	public String pageError500(HttpServletRequest request, ModelMap model) throws Exception{
		logger.info("page error code 500");
		
		pageErrorLog(request);
		
		model.addAttribute("error_code","500 Server error");
		model.addAttribute("msg_en","Intenal server error.");
		model.addAttribute("msg_ko","서버에 오류가 발생하였습니다.");
		
		return "common/error/error";
	}
	
	@RequestMapping(value = "/503/error.do")
	public String pageError503(HttpServletRequest request, ModelMap model) throws Exception{
		logger.info("page error code 503");
		
		pageErrorLog(request);
		
		model.addAttribute("error_code","503 Server error");
		model.addAttribute("msg_en","Service unavailable.");
		model.addAttribute("msg_ko","서비스를 사용할 수 없습니다.");
		
		return "common/error/error";
	}

	/** 에러정보 로그처리*/
	private void pageErrorLog(HttpServletRequest request) {
		logger.info("status_code : "+request.getAttribute("javax.servlet.error.status_code"));
		logger.info("exception_type : "+request.getAttribute("javax.servlet.error.exception_type"));
		logger.info("message : "+request.getAttribute("javax.servlet.error.message"));
		logger.info("request_url : "+request.getAttribute("javax.servlet.error.request_url"));
		logger.info("exception : "+request.getAttribute("javax.servlet.error.exception"));
		logger.info("servlet_name : "+request.getAttribute("javax.servlet.error.servlet_name"));
	}
	
	
}
