package com.mega.mvcProject;

public class ReplyDTO {
	
	String main;
	String title;
	int num;
	String id;
	String reply_id;
	String pw;
	String textarea;
	int r_num;
	public int getR_num() {
		return r_num;
	}
	public void setR_num(int r_num) {
		this.r_num = r_num;
	}
	public String getMain() {
		return main;
	}
	public void setMain(String main) {
		this.main = main;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getReply_id() {
		return reply_id;
	}
	public void setReply_id(String reply_id) {
		this.reply_id = reply_id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getTextarea() {
		return textarea;
	}
	public void setTextarea(String textarea) {
		this.textarea = textarea;
	}
	@Override
	public String toString() {
		return "ReplyDTO [main=" + main + ", title=" + title + ", num=" + num + ", id=" + id + ", reply_id=" + reply_id
				+ ", pw=" + pw + ", textarea=" + textarea + ", r_num=" + r_num + "]";
	}
	
	
}
