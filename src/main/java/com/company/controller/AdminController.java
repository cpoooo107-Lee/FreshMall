package com.company.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.company.model.GoodsVO;
import com.company.service.GoodsService;

@Controller
@RequestMapping("/admin")
public class AdminController {
    private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
    
    @Autowired
    private GoodsService goodsservice;
    
    /* 관리자 메인 페이지 이동 */
    @RequestMapping(value="/main", method = RequestMethod.GET)
    public void adminMainGET() throws Exception{
        logger.info("관리자 페이지 이동");
    }
    
    /* 상품 등록 페이지 접속 */
    @RequestMapping(value="/goodsEnroll", method = RequestMethod.GET)
    public void goodsEnrollGET() throws Exception {
        logger.info("상품 등록 페이지 이동");
    }
    
    /* 상품 관리 페이지 접속 */
    @RequestMapping(value="/goodsManage", method = RequestMethod.GET)
    public void goodsManageGET(Model model) {
        logger.info("상품 목록 페이지 이동");
        
        model.addAttribute("goodsManage", goodsservice.getList());
    }
    
    /* 상품 등록 */
    @RequestMapping(value="goodsEnroll.do", method = RequestMethod.POST)
    public String goodsEnrollPOST(GoodsVO goods, RedirectAttributes rttr) throws Exception{
        logger.info("goodsEnroll :" +  goods);
        
        goodsservice.goodsEnroll(goods);      // 상품 등록 쿼리 수행
        rttr.addFlashAttribute("enroll_result", goods.getP_name());
        
        return "redirect:/admin/goodsManage";
    }
    
    /* 상품 조회 */
    @RequestMapping(value="/lookUp", method = RequestMethod.GET)
    public void lookUpGET(int seq, Model model) {
        model.addAttribute("lookUp", goodsservice.getPage(seq));
    }

    /* 상품 수정 페이지 이동 */
    @RequestMapping(value="/modify", method = RequestMethod.GET)
    public void goodsModifyGET() {
    	logger.info("상품 수정 페이지 이동");
    }
    
    /* 상품 수정 */
    @PostMapping("/modify")
    public String goodsModifyPOST(GoodsVO goods, RedirectAttributes rttr) {
        
        goodsservice.modify(goods);
        rttr.addFlashAttribute("result", "modify success");
        
        return "redirect:/admin/goddsManage";
        
    }
    
}


