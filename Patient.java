

package com.dts.project.model;
import com.dts.core.model.AbstractDataObject;
public class Patient extends AbstractDataObject
{
private String loginname;
private String age;
private String height;
private String weight;
private String bloodgroup;
private String bp;
private String sugar;
private String regdate;
private java.sql.Date regdate1;
public java.sql.Date getRegdate1() {
	return regdate1;
}


public void setRegdate1(java.sql.Date regdate1) {
	this.regdate1 = regdate1;
}
public String getLoginname() {
	return loginname;
}
public void setLoginname(String loginname) {
	this.loginname = loginname;
}
public String getAge() {
	return age;
}
public void setAge(String age) {
	this.age = age;
}
public String getHeight() {
	return height;
}
public void setHeight(String height) {
	this.height = height;
}
public String getWeight() {
	return weight;
}
public void setWeight(String weight) {
	this.weight = weight;
}
public String getBloodgroup() {
	return bloodgroup;
}
public void setBloodgroup(String bloodgroup) {


	this.bloodgroup = bloodgroup;
}
public String getBp() {
	return bp;
}
public void setBp(String bp) {
	this.bp = bp;
}
public String getSugar() {
	return sugar;
}
public void setSugar(String sugar) {
	this.sugar = sugar;
}
public String getRegdate() {
	return regdate;
}
public void setRegdate(String regdate) {
	this.regdate = regdate;
}
}













