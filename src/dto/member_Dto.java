package dto;

import java.io.Serializable;

public class member_Dto implements Serializable {

	private String id;
	private String pwd;
	private String name;
	private String email;
	private String phone;
	private String address;
	private String auth;
	
	public member_Dto(String id, String pwd) {
		super();
		this.id = id;
		this.pwd = pwd;
	}

	public member_Dto() {
	}

	@Override
	public String toString() {
		return "member_Dto [id=" + id + ", pwd=" + pwd + ", name=" + name + ", email=" + email + ", phone=" + phone
				+ ", address=" + address + ", auth=" + auth + "]";
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAuth() {
		return auth;
	}

	public void setAuth(String auth) {
		this.auth = auth;
	}

	public member_Dto(String id, String pwd, String name, String email, String phone, String address, String auth) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.auth = auth;
	}

	public member_Dto(String id, String pwd, String name, String email, String phone, String address) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.address = address;
	}
	
	
}
