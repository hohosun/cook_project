package com.hb.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.hb.mybatis.BbsVO;
import com.hb.mybatis.DBService;

public class ListCommand implements Command{
		
	@Override
	public String exe(HttpServletRequest request, HttpServletResponse response) {
		SqlSession ss = DBService.getFactory().openSession();
		List<BbsVO> list = ss.selectList("list");
		request.setAttribute("list", list);
		ss.close();
		
		
		return "all_list.jsp";
	}
	

}
