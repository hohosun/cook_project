package com.hb.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.hb.mybatis.BbsVO;
import com.hb.mybatis.DBService;

public class WriteCommand implements Command{

	@Override
	public String exe(HttpServletRequest request, HttpServletResponse response) {
		String chk = request.getParameter("chk");
		String path = null;
		
		if(chk==null){
			System.out.println("chk is null");
			path="write.jsp";
		}else{
			System.out.println(chk);
			SqlSession ss = DBService.getFactory().openSession(true);
			System.out.println("dbservice");
			BbsVO vo = new BbsVO();
			
			vo.setTitle(request.getParameter("title"));
			vo.setCategory(request.getParameter("category"));
			vo.setContents1(request.getParameter("content1"));
			vo.setContents2(request.getParameter("content2"));
			//vo.setImage(request.getParameter("image"));
			//vo.setId(request.getParameter("id"));
			vo.setId("id");
			vo.setImage("img");
			System.out.println("set vo");
			int result = ss.insert("write", vo);
			System.out.println(result);
			if(result>0){
				System.out.println("Write Success");
			}else{
				System.out.println("Write Fail");
			}
			ss.close();
			request.setAttribute("view", vo);
			path = "index.html";
		}
		
		
		return path;
	}
	

}
