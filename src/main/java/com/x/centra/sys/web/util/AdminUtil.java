package com.x.centra.sys.web.util;

import javax.servlet.http.HttpSession;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.x.centra.sys.web.model.sso.GeneralSSOClientUser;
import com.x.sso.client.filter.SSOClientConstants;

/**
 * Created by jackieliu on 16/7/8.
 */
public class AdminUtil {
    private AdminUtil() {
	}

	/**
     * 获取管理员标识
     * @param session
     * @return
     */
    public static Long getAdminId(HttpSession session){
    	GeneralSSOClientUser user = (GeneralSSOClientUser)session.getAttribute(SSOClientConstants.USER_SESSION_KEY);
        String userId = user.getUserId();
        return Long.parseLong(userId);
//    	return user.getAccountId();
    }

    /**
     * 获取管理员标识
     * @return
     */
    public static Long getAdminId(){
        HttpSession session = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest().getSession();
        return getAdminId(session);
    }

    /**
     * 获取用户租户标识
     * @return
     */
    public static String getTenantId(){
        HttpSession session = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest().getSession();
        GeneralSSOClientUser user = (GeneralSSOClientUser)session.getAttribute(SSOClientConstants.USER_SESSION_KEY);
        return user.getTenantId();
    }

    /**
     * 获取商户标识
     * @return
     */
    public static String getSupplierId(){
//        HttpSession session = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest().getSession();
        return "-1";
    }
}
