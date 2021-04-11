package com.company.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.mapper.GoodsMapper;
import com.company.model.GoodsVO;

@Service
public class GoodsServiceImpl implements GoodsService{
	@Autowired
	GoodsMapper goodsmapper;
	
	//상품 등록
	@Override
	public void goodsEnroll(GoodsVO goods) throws Exception {
		goodsmapper.goodsEnroll(goods);
	}
	
	//상품 목록
	@Override
	public List<GoodsVO> getList() {
		return goodsmapper.getList();
	}

	//상품 조회
	@Override
	public GoodsVO getPage(int seq) {
		return goodsmapper.getPage(seq);
	}
	
	//상품 수정
	@Override
	public int modify(GoodsVO goods) {
		return goodsmapper.modify(goods);
	}

}
