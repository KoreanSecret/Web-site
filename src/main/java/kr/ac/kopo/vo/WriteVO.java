package kr.ac.kopo.vo;

public class WriteVO {

	private int no;
	private String id;
	private String username;
	private String title;
	private String content;
	private String reg_date;
	private String update_date;
	private UserVO users;
	
	public WriteVO() {
		
	}
	public WriteVO(int no, String id, String username, String title, String content, String reg_date, String update_date) {
		super();
		this.no = no;
		this.id = id;
		this.username = username;
		this.title = title;
		this.content = content;
		this.reg_date = reg_date;
		this.update_date = update_date;
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
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(String update_date) {
		this.update_date = update_date;
	}
	public UserVO getUsers() {
		return users;
	}
	public void setUsers(UserVO users) {
		this.users = users;
	}
	@Override
	public String toString() {
		return "WriteVO [no=" + no + ", id=" + id + ", username=" + username + ", title=" + title + ", content="
				+ content + ", reg_date=" + reg_date + ", update_date=" + update_date + ", users=" + users + "]";
	}

	
	
	
	
	
	
	
	
}
