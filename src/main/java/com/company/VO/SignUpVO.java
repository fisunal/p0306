package com.company.VO;


import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class SignUpVO {
	
	/*@NotNull(message="아이디를 입력해 주세요.")
	@NotEmpty(message="아이디를 입력해 주세요.")
	@Size(min=4,message="아이디는 4자 이상으로 작성해 주세요.")*/
	private String id;
	
	/*@NotNull(message="비밀번호를 입력해 주세요.")
	@NotEmpty(message="비밀번호를 입력해 주세요.")
	@Size(min=7,message="아이디는 7자 이상으로 작성해 주세요.")*/
	private String pass;
	
	/*@NotNull(message="이름을 입력해 주세요.")
	@NotEmpty(message="이름을 입력해 주세요.")*/
	private String name;
	
	/*@NotNull(message="전화번호를 입력해 주세요.")
	@NotEmpty(message="전화번호를 입력해 주세요.")
	@Size(min=10,max=11,message="전화번호 자릿수가 맞지 않습니다. 확인해 주세요")*/
	private int hp;
	
	/*@NotNull(message="이메일 주소를 입력해 주세요.")
	@NotEmpty(message="이메일 주소를 입력해 주세요.")*/
	private String email;
	
	/*@NotNull(message="주소를 입력해 주세요.")
	@NotEmpty(message="주소를 입력해 주세요.")*/
	private String address;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getHp() {
		return hp;
	}

	public void setHp(int hp) {
		this.hp = hp;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
}

