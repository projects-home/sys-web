package com.x.centra.sys.web.controller.member;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 权益管理
 * @author wangluyang
 *
 */
@Controller
@RequestMapping("/member")
public class MemberController {

	private static final Logger LOG = LoggerFactory.getLogger(MemberController.class);
	
	/**
	 * 进入页面
	 */
	@RequestMapping("/list")
	public String editQuery(Model uiModel) {
		return "member/memberlist";
	}

}
