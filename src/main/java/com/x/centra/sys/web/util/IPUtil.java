package com.x.centra.sys.web.util;

import javax.servlet.http.HttpServletRequest;

import com.x.sdk.util.StringUtil;
/**
 *ip工具 
 *
 */
public  class IPUtil {
    private IPUtil() {
		// TODO Auto-generated constructor stub
	}

    /**
     * 获取ip
     * @param request
     * @return
     * @UCUSER
     */
	public static String getIp(HttpServletRequest request) {
        String ip = request.getHeader("X-Forwarded-For");
        if(!StringUtil.isBlank(ip) && !"unKnown".equalsIgnoreCase(ip)){
            //多次反向代理后会有多个ip值，第一个ip才是真实ip
            int index = ip.indexOf(",");
            if(index != -1){
                return ip.substring(0,index);
            }else{
                return ip;
            }
        }
        ip = request.getHeader("X-Real-IP");
        if(!StringUtil.isBlank(ip) && !"unKnown".equalsIgnoreCase(ip)){
            return ip;
        }
        return request.getRemoteAddr();
    }
}
