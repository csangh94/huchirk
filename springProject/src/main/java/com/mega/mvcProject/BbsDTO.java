package com.mega.mvcProject;

public class BbsDTO {
		
		private String id;
		private String title;
		private String content;
		private String main;
		private int num;
		public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		public String getTitle() {
			return title;
		}
		public void setTitle(String title) {
			this.title = title;
		}
		public String getContent() {
			return content;
		}
		public void setContent(String content) {
			this.content = content;
		}
		public String getMain() {
			return main;
		}
		public void setMain(String main) {
			this.main = main;
		}
		public int getNum() {
			return num;
		}
		public void setNum(int num) {
			this.num = num;
		}
		@Override
		public String toString() {
			return "BbsDTO [id=" + id + ", title=" + title + ", content=" + content + ", main=" + main + ", num=" + num
					+ "]";
		}
		
		
}
