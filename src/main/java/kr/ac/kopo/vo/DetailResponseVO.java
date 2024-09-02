package kr.ac.kopo.vo;

public class DetailResponseVO {

	private int no;
	private String username;
	private String content;
	private int write_no;
	private String photo;
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
	public int getWrite_no() {
		return write_no;
	}
	public void setWrite_no(int write_no) {
		this.write_no = write_no;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	@Override
	public String toString() {
		return "DetailResponseVO [no=" + no + ", username=" + username + ", content=" + content + ", write_no="
				+ write_no + ", photo=" + photo + "]";
	}
	
	
	
	
}
