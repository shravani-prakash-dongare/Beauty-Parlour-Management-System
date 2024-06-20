package user;

import java.io.InputStream;

public class userDetails {

	private String fname, lname, contact, gender, email, password, pid,status;
	private InputStream inputStream;

	public userDetails() {
		super();
		// TODO Auto-generated constructor stub
	}

	public userDetails(String fname, String lname, String contact, String gender, String email, String password,
			String pid, String img,String status) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.contact = contact;
		this.gender = gender;
		this.email = email;
		this.password = password;
		this.pid = pid;
		this.pid = status;

	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
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

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public InputStream getInputStream() {
		return inputStream;
	}

	// Add setter method for InputStream
	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

}
