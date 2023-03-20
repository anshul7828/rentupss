package Model;

import java.sql.ResultSet;

import Database.DAO;

public class ProductModel {
  int productid;
  private String pname;
  private String description;
  private int priceperday;
  private int discount;
  private int rating;
  private String postedby;
  private String city;
  private String categoryname;
  private String photo1;
  private String photo2;
  private String photo3;
  private char status;
  
  public ProductModel() { }
  public ProductModel(String pname,String des,int pr,int dis,String post,String city,  String cat,String photo1,String photo2,String photo3) {
    this.setPname(pname);
    this.setDescription(des);
    this.setPriceperday(pr);
    //this.setRating(rat);
    this.setPostedby(post);
    this.setCity(city);
        this.setCategoryname(cat);
        this.setPhoto1(photo1);
        this.setPhoto2(photo2);
        this.setPhoto3(photo3);
  }
  String getPname() {
    return pname;
  }
  void setPname(String pname) {
    this.pname = pname;
  }
  String getDescription() {
    return description;
  }
  void setDescription(String description) {
    this.description = description;
  }
  int getPriceperday() {
    return priceperday;
  }
  void setPriceperday(int priceperday) {
    this.priceperday = priceperday;
  }
  int getRating() {
    return rating;
  }
  void setRating(int rating) {
    this.rating = rating;
  }
  String getPostedby() {
    return postedby;
  }
  void setPostedby(String postedby) {
    this.postedby = postedby;
  }
  String getCity() {
    return city;
  }
  void setCity(String city) {
    this.city = city;
  }
  String getCategoryname() {
    return categoryname;
  }
  void setCategoryname(String categoryname) {
    this.categoryname = categoryname;
  }
  String getPhoto1() {
    return photo1;
  }
  void setPhoto1(String photo1) {
    this.photo1 = photo1;
  }
  String getPhoto2() {
    return photo2;
  }
  void setPhoto2(String photo2) {
    this.photo2 = photo2;
  }
  String getPhoto3() {
    return photo3;
  }
  void setPhoto3(String photo3) {
    this.photo3 = photo3;
  }
  char getStatus() {
    return status;
  }
  void setStatus(char status) {
    this.status = status;
  }
  public ResultSet getAllProduct() throws Exception{
    ResultSet rs = new DAO().queryReturner("select * from product");
    return rs;
  }
  public boolean insertProduct() throws Exception{
    String sql = "insert into product(pname,description,priceperday,discount,"+"rating,postedby,city,categoryname,photo1,photo2,photo3) values('"+
  this.getPname() +"','"+this.getDescription()+"',"+this.getPriceperday()+","+this.getDiscount()+","+this.getRating()+",'"+this.postedby+"','"+this.getCity()+"','"+this.getCategoryname()+"','"+
        this.getPhoto1()+"','"+this.getPhoto2()+"','"+this.getPhoto3()+"')";
    new DAO().queryExcuter(sql);
    return true;
  }
  int getDiscount() {
    return discount;
  }
  void setDiscount(int discount) {
    this.discount = discount;
  }
}