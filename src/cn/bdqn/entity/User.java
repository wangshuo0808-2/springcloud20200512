package cn.bdqn.entity;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * 
FieldTypeComment
userIdint(5) NOT NULL主键，用户表id，自增
userNamevarchar(10) NOT NULL唯一键，用户登录名
userPwdvarchar(10) NOT NULL用户登陆密码
emailvarchar(30) NOT NULL用户email
gendervarchar(2) NULL用户性别
birthdaydate NULL用户生日
addressCityvarchar(50) NULL用户所在城市
QQvarchar(20) NULL用户QQ号
telephonevarchar(11) NULL用户联系方式
hobbyvarchar(50) NULL用户的兴趣爱好
introducevarchar(200) NULL用户自我介绍
roleIdint(5) NULL角色0：会员：1：管理员


 * @author Administrator
 *
 */
public class User {
	private Integer userId,roleId;
	private String userName,userPwd,email,gender,addressCity,QQ,telephone,hobby,introduce;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date birthday;
	public User() {
		
	}
	public User( Integer roleId, String userName,
			String userPwd, String email, String gender, String addressCity,
			String qQ, String telephone, String hobby, String introduce,
			Date birthday) {
		
		this.roleId = roleId;
		this.userName = userName;
		this.userPwd = userPwd;
		this.email = email;
		this.gender = gender;
		this.addressCity = addressCity;
		QQ = qQ;
		this.telephone = telephone;
		this.hobby = hobby;
		this.introduce = introduce;
		this.birthday = birthday;
		/*DateFormat df=new SimpleDateFormat("yyyy-MM-dd hh:mm");
		try {
			this.birthday = df.parse(birthday);
		} catch (ParseException e) {
			e.printStackTrace();
		}*/
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Integer getRoleId() {
		return roleId;
	}
	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddressCity() {
		return addressCity;
	}
	public void setAddressCity(String addressCity) {
		this.addressCity = addressCity;
	}
	public String getQQ() {
		return QQ;
	}
	public void setQQ(String qQ) {
		QQ = qQ;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	
	
	
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	/*public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		DateFormat df=new SimpleDateFormat("yyyy-MM-dd hh:mm");
		try {
			this.birthday = df.parse(birthday);
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}*/
	@Override
	public String toString() {
		return "User [QQ=" + QQ + ", addressCity=" + addressCity + ", birthday="
				+ birthday + ", email=" + email + ", gender=" + gender
				+ ", hobby=" + hobby + ", introduce=" + introduce + ", roleId="
				+ roleId + ", telephone=" + telephone + ", userId=" + userId
				+ ", userName=" + userName + ", userPwd=" + userPwd + "]";
	}
	
}
