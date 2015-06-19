package org.springframework.zmytest;

import java.util.List;

public class MyForm {
	private String username;
	private String password;
	private List<String> group;
	private String single1;
	private String single2;
	private List<Integer> markets;
	private Integer sex;
	private String remark;

	public MyForm() {
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public List<String> getGroup() {
		return group;
	}

	public void setGroup(List<String> group) {
		this.group = group;
	}

	public String getSingle1() {
		return single1;
	}

	public void setSingle1(String single1) {
		this.single1 = single1;
	}

	public String getSingle2() {
		return single2;
	}

	public void setSingle2(String single2) {
		this.single2 = single2;
	}

	public List<Integer> getMarkets() {
		return markets;
	}

	public void setMarkets(List<Integer> markets) {
		this.markets = markets;
	}

	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

}
