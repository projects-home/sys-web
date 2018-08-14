package com.x.centra.product.web.test.dubbo;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.x.common.api.cache.interfaces.ICacheSV;
import com.x.sdk.dubbo.util.DubboConsumerFactory;
public class ICacheSVDubboTest {
	
	@Test
	public void testGetAreaName() {
		ICacheSV iCacheSV = DubboConsumerFactory.getService(ICacheSV.class);
		String areaCode = "00";
		System.out.println(iCacheSV.getAreaName(areaCode));
	}

	@Test
	public void testGetArea() {
		fail("Not yet implemented");
	}

	@Test
	public void testGetSysParamList() {
		fail("Not yet implemented");
	}

	@Test
	public void testGetSysParamSingle() {
		fail("Not yet implemented");
	}

	@Test
	public void testGetServiceNum() {
		fail("Not yet implemented");
	}

}
