package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MyJDBC 
{
	private final  String driver="com.mysql.jdbc.Driver"; //使用jdbc驱动
	private final  String url="jdbc:mysql://localhost:3306/lssvm"; //数据库的位置
	private final  String user="root"; //用户名
	private final  String password="root"; //密码
		
	private static Connection conn;
	
	public void createConnection() //创建JDBC的连接
	{
		try 
		{
			Class.forName(driver); //注册JDBC驱动
			conn=DriverManager.getConnection(url,user,password); //获取数据连接
			conn.setAutoCommit(true); //设置自动提交sql	 
			
		} 
		catch (ClassNotFoundException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	

	}
	
	public boolean executeUpdate(String sql) //执行数据库更新操作,增加删除修改
	{
		if(conn==null) //如果连接为空则新建立连接
			createConnection();
		try  
		{
			System.out.println(sql);
			
			Statement stmt= conn.createStatement(); //创造statement对象
			int count=stmt.executeUpdate(sql); //对数据库进行更新操作
			System.out.println(+count+"records has changed!"); 
			return true;
		} catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
			return false;
		}
	}
	
	public ResultSet executeQuery(String sql) //执行数据库查询
	{
		if(conn==null) //如果连接为空则新建立连接
			createConnection();
		
		try 
		{
		
			Statement stmt=conn.createStatement(); //创造statement对象
			ResultSet rs=stmt.executeQuery(sql); //执行数据库查询
			return rs;
		} 
		catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
	}
	
	public void close() //关闭数据库的操作
	{
		try {
			if(conn!=null)
				conn.close();
		} catch (SQLException e) {
				// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
	}
	
	public static void main(String[] args) {
		MyJDBC myjdbc=new MyJDBC();
		myjdbc.createConnection();
		
		ResultSet rs=myjdbc.executeQuery("select sid from Student");
		
		try {
			while(rs.next())
				System.out.println(rs.getInt(1));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		
	}
}
