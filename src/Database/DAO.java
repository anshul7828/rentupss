package Database;
import java.sql.*;
public class DAO {
public Connection cn=null;
public DAO() throws Exception{
	Class.forName("com.mysql.jdbc.Driver");
cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rentalplatform","root","root");
}
public  void queryExcuter(String sql) throws Exception
{Statement st = cn.createStatement();
st.execute(sql);
st.close();
cn.close();
	}

public ResultSet queryReturner(String sql) throws Exception
{Statement st=cn.createStatement();
ResultSet rs=st.executeQuery(sql);
return rs;
	}
}
