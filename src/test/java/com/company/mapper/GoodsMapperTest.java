package com.company.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class GoodsMapperTest {
	private static final Logger log = LoggerFactory.getLogger(GoodsMapperTest.class);
	
	@Autowired
    private GoodsMapper goodsmapper;
	
	/* 게시판 조회 */
    @Test
    public void testGetPage() {
       /* 실제 존재하는 페이지 */
       int seq = 5;
       
       log.info("" + goodsmapper.getPage(seq));
   }

}
