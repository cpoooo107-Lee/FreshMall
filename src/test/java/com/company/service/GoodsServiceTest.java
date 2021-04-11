package com.company.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.company.mapper.GoodsMapperTest;
import com.company.model.GoodsVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class GoodsServiceTest {
	private static final Logger log = LoggerFactory.getLogger(GoodsServiceTest.class);
	
	/*AuthoreService 의존성 주입*/
    @Autowired
    private GoodsService service;
    
    /*게시판 조회*/
    @Test
    public void testGETPage() {
        
        int seq = 5;
        
        log.info("" + service.getPage(seq));
        
    }

}
