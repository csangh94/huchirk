package com.mega.mvcProject;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component 
public class MemberDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	
	public List<MemberDTO2> list() {
		List<MemberDTO2> list = my.selectList("member.list");
		return list;
	}
	
	
	public MemberDTO2 select(MemberDTO2 dto) {
		MemberDTO2 dto2= my.selectOne("member.select", dto);
		return dto2;
	}
	
	public void insert(MemberDTO2 dto) {
		my.insert("member.insert", dto);
	}
	
	public void delete(MemberDTO2 dto) {
		my.delete("member.delete", dto);
	}
	
	public void update(MemberDTO2 dto) {
		my.update("member.update", dto);
	}
	
	public int login(MemberDTO2 dto) {
		MemberDTO2 dto2 = my.selectOne("member.login", dto);
		int result;
	      if (dto2 != null) {
	         result = 0;
	         System.out.println(result);
	      }else {
	    	 result = 1;
	    	 System.out.println(result);
	      }
	      return result;
	   }
	
	public int idcheck(MemberDTO2 dto) {
		MemberDTO2 dto3 = my.selectOne("member.idcheck", dto);
		int result;
		 if (dto3 != null) {
	         result = 0;
	         System.out.println(result);
	      }else {
	    	 result = 1;
	    	 System.out.println(result);
	      }
	      return result;
	   }
	}
	
