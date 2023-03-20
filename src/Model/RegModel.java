package Model;

import java.sql.ResultSet;

import Database.DAO;

public class RegModel {
    private String emailid;
    private String name;
    private String mobileno;
    private String address;
    private String pincode;
    private String password;
    private String doreg;
    
    public RegModel()
    {
      
    }
    public RegModel(String e,String n,String m,String a,String pn,String pass)
    {
      this.setEmailid(e);this.setName(n);this.setMobileno(m);
      this.setAddress(a);this.setPincode(pn);this.setPassword(pass);
    }
    public RegModel(String e, String p) {
    	this.setEmailid(e);
    	this.setPassword(p);
    }
  String getEmailid() {
    return emailid;
  }
  void setEmailid(String emailid) {
    this.emailid = emailid;
  }
 public String getName() {
    return name;
  }
  void setName(String name) {
    this.name = name;
  }
  String getMobileno() {
    return mobileno;
  }
  void setMobileno(String mobileno) {
    this.mobileno = mobileno;
  }
  String getAddress() {
    return address;
  }
  void setAddress(String address) {
    this.address = address;
  }
  String getPincode() {
    return pincode;
  }
  void setPincode(String pincode) {
    this.pincode = pincode;
  }
  String getPassword() {
    return password;
  }
  void setPassword(String password) {
    this.password = password;
  }
  String getDoreg() {
    return doreg;
  }
  void setDoreg(String doreg) {
    this.doreg = doreg;
  }
  
  public boolean userSave() throws Exception
  {
    String sql = "insert into reg(emailid ,name,mobileno,address,pincode,password) values('"+this.getEmailid()+"','"+
  this.getName()+"','"+this.getMobileno()+"','"+this.getAddress()+"','"+
        this.getPincode()+"','"+this.getPassword()+"')";
    DAO obj = new DAO();
    obj.queryExcuter(sql);
    return true;
  }
  
  public ResultSet getAllUser() throws Exception
  {
    ResultSet rs = new DAO().queryReturner("select * from reg");
    return rs;
  }
  public boolean checkUser() throws Exception{
	  DAO obj = new DAO();
	  ResultSet rs= obj.queryReturner("select * from reg where emailid='"+this.getEmailid()+"' and password='"+this.getPassword()+"'");
	  if(rs.next()) {
		  this.setName(rs.getString(2));

		  this.setMobileno(rs.getString(3));

		  this.setAddress(rs.getString(4));

		  this.setPincode(rs.getString(5));
		  

		  this.setDoreg(rs.getString(7));
		  return true;
	  }
	  return false;
  }
  }