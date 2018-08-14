package com.x.centra.sys.web.controller.index;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * @author wangluyang
 *
 */
@Controller
@RequestMapping("/index")
public class IndexController {

	private static final Logger LOG = LoggerFactory.getLogger(IndexController.class);
	
	/**
	 * 进入页面
	 */
	@RequestMapping("/list")
	public String list(Model uiModel) {
		return "index/welcome";
	}
}
