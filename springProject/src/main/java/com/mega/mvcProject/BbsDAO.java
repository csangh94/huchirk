package com.mega.mvcProject;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class BbsDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public List<BbsDTO> all(String main) {
		List<BbsDTO> list = my.selectList("bbs.all",main);
		return list;
	}
	public List<ReplyDTO> reply_all(ReplyDTO dto) {
		List<ReplyDTO> list = my.selectList("bbs.reply_all", dto);
		return list;
	}
	
	public void add(ReplyDTO dto) {
		my.insert("bbs.add", dto);
	}
	public void bbs_insert(BbsDTO dto) {
		my.insert("bbs.bbs_insert", dto);
	}
	
	public BbsDTO content(BbsDTO dto) {
		BbsDTO dto2 = my.selectOne("bbs.content", dto);
		return dto2;
	}
	public BbsDTO select2(String id) {
		BbsDTO dto = my.selectOne("bbs.select2", id);
		return dto;
	}
	public List<BbsDTO> select() {
		List<BbsDTO> list = my.selectList("bbs.select");
		return list;
	}
	public void insert(BbsDTO dto) {
		my.insert("bbs.insert", dto);
	}
	public void delete(BbsDTO dto) {
		my.delete("bbs.delete",dto);
		my.delete("bbs.reply_delete",dto);
	}
	public void reply_delete(ReplyDTO dto) {
		my.delete("bbs.reply_delete2",dto);
	}
	public void update(BbsDTO dto) {
		my.update("bbs.update",dto);
		
	}
	
}
