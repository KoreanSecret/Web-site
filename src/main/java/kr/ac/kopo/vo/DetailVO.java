package kr.ac.kopo.vo;

public class DetailVO {
	private int no;
    private String username;
    private String content;
    private String reg_date;
    private String write_no;
    private UserVO users;
	public DetailVO() {
		super();
	}
	
	public DetailVO(int no, String username, String content, String reg_date, String write_no) {
		super();
		this.no = no;
		this.username = username;
		this.content = content;
		this.reg_date = reg_date;
		this.write_no = write_no;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
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
	
	public String getWrite_no() {
		return write_no;
	}
	public void setWrite_no(String write_no) {
		this.write_no = write_no;
	}

	public UserVO getUsers() {
		return users;
	}

	public void setUsers(UserVO users) {
		this.users = users;
	}

	@Override
	public String toString() {
		return "DetailVO [no=" + no + ", username=" + username + ", content=" + content + ", reg_date=" + reg_date
				+ ", write_no=" + write_no + ", users=" + users + "]";
	}

	
	
    
}
