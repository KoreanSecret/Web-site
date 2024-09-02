package kr.ac.kopo.vo;

public class UserVO {
	
    private String user_id;
    private String username;
    private String email;
    private String password;
    private String phone_number;
    private String address;
    private String user_type;
    
    
    
    public UserVO() {
    	
    }



	public UserVO(String user_id, String username, String email, String password, String phone_number, String address,
			String user_type) {
		super();
		this.user_id = user_id;
		this.username = username;
		this.email = email;
		this.password = password;
		this.phone_number = phone_number;
		this.address = address;
		this.user_type = user_type;
	}



	public String getUser_id() {
		return user_id;
	}



	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}



	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getPhone_number() {
		return phone_number;
	}



	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public String getUser_type() {
		return user_type;
	}



	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}



	@Override
	public String toString() {
		return "UserVO [user_id=" + user_id + ", username=" + username + ", email=" + email + ", password=" + password
				+ ", phone_number=" + phone_number + ", address=" + address + ", user_type=" + user_type + "]";
	}

   

   }