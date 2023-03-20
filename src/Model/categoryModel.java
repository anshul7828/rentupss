package Model;

import java.sql.ResultSet;

import Database.DAO;

public class categoryModel {
private int categoryid;
private String categoryName;
public categoryModel() {
	
}
public categoryModel(String s) {
	this.categoryName=s;
	
}
int getCategoryid() {
	return categoryid;
}
void setCategoryid(int categoryid) {
	this.categoryid = categoryid;
}
String getCategoryName() {
	return categoryName;
}
void setCategoryName(String categoryName) {
	this.categoryName = categoryName;
}
public boolean categorySave() throws Exception {
	
	Database.DAO db = new Database.DAO();
	db.queryExcuter("insert into categorymaster(categoryname) values ('"+
	this.getCategoryName()+"')");
	return true;
			
}
public ResultSet getAllCategory() throws Exception{
	
	Database.DAO db = new Database.DAO();
	ResultSet rs= db.queryReturner("select * from categorymaster");
	return rs;
}

}
