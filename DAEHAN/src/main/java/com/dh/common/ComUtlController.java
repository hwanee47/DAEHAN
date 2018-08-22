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
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value= "/com")
public class ComUtlController {
	
	private static final long serialVersionUID = 1L;
	
	private static final Logger logger = LoggerFactory.getLogger(ComUtlController.class);
	
	
	@RequestMapping(value = "/pageLink.do")
	public String moveToPage(@RequestParam("link") String linkPage, HttpServletRequest request, ModelMap model) throws Exception{
		
		String link = linkPage;
		
		//메뉴권한을 위해 member객체를 뷰로 보내줌.
		model.addAttribute("member", request.getSession().getAttribute("member"));
		
		if (linkPage==null || linkPage.equals(""))
		{
			link="error/Error";
		}else {
			if(link.indexOf(",")>-1){
			    link=link.substring(0,link.indexOf(","));
			}
		}
		System.out.println("륑크 :::"+link);
		return link;
	}
	

	public static ModelAndView render(String templateId, List<Map<String, Object>> list, String fmt) {


        JRBeanCollectionDataSource src = new JRBeanCollectionDataSource(list);

        ModelAndView mv = new ModelAndView();


        mv.setViewName(templateId);      //​ multiformat-view

        mv.addObject("format", fmt);        //pdf

        mv.addObject("datasource", src);  //​list DataSource -> “datasource”는 jasperreport-views.properties 파일의  multiformat-view.reportDataKey의 이름과 일치해야한다.
        System.out.println("cvccccccccc");

        return mv;

  }



	
	
	
}
