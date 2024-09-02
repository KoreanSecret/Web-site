package kr.ac.kopo.vo;

public class PostVO {
	
	private int no;
	private String id;
	private String username;
	private String title;
	private String content;
	private String regDate;
	private String Update_date;
	
	
	public PostVO() {
		super();
		
	}
	public PostVO(int no, String id, String username, String title, String content, String regDate,
			String update_date) {
		super();
		this.no = no;
		this.id = id;
		this.username = username;
		this.title = title;
		this.content = content;
		this.regDate = regDate;
		Update_date = update_date;
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
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
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getUpdate_date() {
		return Update_date;
	}
	public void setUpdate_date(String update_date) {
		Update_date = update_date;
	}
	@Override
	public String toString() {
		return "PostVO [no=" + no + ", id=" + id + ", username=" + username + ", title=" + title + ", content="
				+ content + ", regDate=" + regDate + ", Update_date=" + Update_date + "]";
	}

	
	
}
