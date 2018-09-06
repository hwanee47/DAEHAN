package com.dh.app;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dh.app.service.AppService;
import com.dh.app.vo.Vend;

import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value= "/app")
public class AppController {
	
	/** AppService */
	@Resource(name = "appService")
	private AppService appService;
	
	
	private static final Logger logger = LoggerFactory.getLogger(AppController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		return "main";
	}
	
	
	@RequestMapping(value = "/addVend.do", method = RequestMethod.POST)
	public String addVend(HttpServletRequest request, @ModelAttribute("vend") Vend vend, ModelMap model) throws Exception{
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("VEND_DIV", vend.getVendDiv());
		map.put("VEND_NAME", vend.getVendName());
		map.put("VEND_REP", vend.getVendRep());
		map.put("VEND_NUM", vend.getVendNum());
		map.put("VEND_CONDITION", vend.getVendCondition());
		map.put("VEND_JONGMOK", vend.getVendJongMok());
		map.put("VEND_ADDR", vend.getVendAddr());
		map.put("VEND_PHONE_NUM", vend.getVendPhoneNum());
		map.put("VEND_FAX_NUM", vend.getVendFaxNum());
		map.put("VEND_MAIL_ADDR", vend.getVendMailAddr());
		
		appService.addVend(map);
		
		//List<HashMap<String,String>> list = loginService.searchMachineList();
		
		//model.addAttribute("machineList", list);
		
		return "redirect:/app/searchVendList.do";
	}
	
	@RequestMapping(value = "/searchVendList.do")
	public ModelAndView searchVendList(HttpServletRequest request, @RequestParam(value="program", required=false) String program, ModelMap model) throws Exception{
		ModelAndView mav = new ModelAndView();
		List<HashMap<String,String>> list = appService.searchVendList();
		
		//model.addAttribute("vendList", list);
		
		if(program == null) {
			//return "manage/vendManage";
			mav.addObject("vendList", list);
			mav.setViewName("manage/vendManage");
			
			return mav;
		}
		
		if(program.equals("popup")) {
			mav.addObject("data", list);
			mav.setViewName("jsonView");
		}else {
			throw new Exception();
		}
		System.out.println("WHY?????????????????????????????????????????????");
		return mav;
	}
	

	@RequestMapping(value = "/addMaterial.do", method = RequestMethod.POST)
	public String addMaterial(HttpServletRequest request, @RequestParam HashMap<String, Object> map, ModelMap model) throws Exception{
		
		appService.addMaterial(map);
		
		model.addAttribute("code", "1");
		model.addAttribute("msg", "등록하였습니다.");
		
		return "manage/materialAdd";
	}
	
	

	@RequestMapping(value = "/searchMaterialList.do")
	public String searchMaterialList(HttpServletRequest request, @RequestParam(value="program", required=false) String program, ModelMap model) throws Exception{
		List<HashMap<String,String>> list = appService.searchMaterialList();
		
		model.addAttribute("materialList", list);
		
		if(program == null) {
			return "manage/materialManage";
		}
		
		if(program.equals("popup")) {
			return "common/vendPopup";
		}else {
			throw new Exception();
		}
		
	}
	
	@RequestMapping(value = "/reports/test.pdf")
	public ModelAndView test(HttpServletRequest request,HttpServletResponse response) throws Exception{


		List<HashMap<String, String>> list = new ArrayList<HashMap<String,String>>();
		
		HashMap<String,String> map =new HashMap<String,String>();
		
		map.put("TEST", "DD");
		
		list.add(map);
		
		
		JRDataSource basketDS = new JRBeanCollectionDataSource(list);

        // In order to use Spring's built-in Jasper support,
		// We are required to pass our datasource as a map parameter
		// modelMap is the Model of our application
		Map<String,Object> modelMap = new HashMap<String,Object>();
		modelMap.put("basketReport", basketDS);


        // pdfReport is the View of our application
		// This is declared inside the jasper-views.xml
		ModelAndView modelAndView = new ModelAndView("pdfReport", modelMap);

		// Return the View and the Model combined
		return modelAndView;

	}
	
}
