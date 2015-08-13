package com.hb.mybatis;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class DBService {
	static private SqlSessionFactory factory;
	static {
		try {
			factory = new SqlSessionFactoryBuilder()
			.build(Resources.getResourceAsReader("com/hb/mybatis/config.xml"));
		} catch (Exception e) {
			System.out.println("DB서비스에러");
		}
	}
	public static SqlSessionFactory getFactory(){
		return factory;
	}
}
