package springmvcSearch;

import java.util.Date;
import java.util.List;

public class Student {

	private String name;
	private String email;
	private Long phn;
	private String password;
	private String course;
	private List<String> subject;
	private Address address;
	
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "Student [name=" + name + ", email=" + email + ", phn=" + phn + ", password=" + password + ", course="
				+ course + ", subject=" + subject + ", address=" + address + "]";
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
	public Long getPhn() {
		return phn;
	}
	public void setPhn(Long phn) {
		this.phn = phn;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public List<String> getSubject() {
		return subject;
	}
	public void setSubject(List<String> subject) {
		this.subject = subject;
	}
	
}
