package com.company.mapper;

import java.util.List;

import com.company.model.GoodsVO;

public interface GoodsMapper {
	//상품 등록
	public void goodsEnroll(GoodsVO goods);
	
	//상품 목록
	public List<GoodsVO> getList();
	
	//상품 조회
	public GoodsVO getPage(int seq);
	
	//상품 수정
	public int modify(GoodsVO goods);
}
