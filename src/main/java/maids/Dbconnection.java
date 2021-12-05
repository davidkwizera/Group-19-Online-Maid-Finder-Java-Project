package maids;




import java.net.http.HttpResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class Dbconnection {
	private String dburl="jdbc:mysql://localhost:3306/maidsdb";
	private String dbuser="root";
	private String dbpass="";
private String dbDriver="com.mysql.cj.jdbc.Driver";

public void loadDriver(String dbDriver) {
	try {
		Class.forName(dbDriver);
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
	public Connection getConnection() {
		Connection con= null;
		try
		{
		
		con= DriverManager.getConnection(dburl,dbuser,dbpass);
		}
		catch (SQLException e){
			e.printStackTrace();
		}
		return con;
				
	}
	public  String addemployer(EmployerRegisterg c)  {
		loadDriver( dbDriver);
		Connection con= getConnection();
		String query="INSERT INTO employer VALUES(?,?,?,?,?)";
		
		String message="Record registered successfully";

		try {
			PreparedStatement ps = con.prepareStatement(query);
			
				ps.setString(1, null);
				ps.setString(2, c.getFullname());
				ps.setString(3, c.getEmail());
				ps.setString(4, c.getUsername());
				ps.setString(5, c.getPassword());
			
				ps.executeUpdate();
		}
		catch (SQLException e){
			message="Record not Registrered!";
			e.printStackTrace();
		}
		return message;

	}
	
	public boolean CheckCredentials(String username,String password) {
		loadDriver(dbDriver);
		Connection con=getConnection();

		String query="SELECT * FROM users WHERE username=? AND password=?";

		PreparedStatement ps=null;
		try {
		ps=con.prepareStatement(query);

		ps.setString(1, username);
		ps.setString(2, password);
		
		ResultSet rs=ps.executeQuery();

		if(rs.next()) {
		return  true;
		}
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}

		return false;
	}
	
	

public boolean CheckCredentialsMaid(String username,String password) {
	loadDriver(dbDriver);
	Connection con=getConnection();

	String query="SELECT * FROM maids WHERE username=? AND password=?";

	PreparedStatement ps=null;
	try {
	ps=con.prepareStatement(query);

	ps.setString(1, username);
	ps.setString(2, password);
	
	ResultSet rs=ps.executeQuery();

	if(rs.next()) {
	return  true;
	}
	} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	}

	return false;
}



public boolean CheckCredentialsEmployer(String username,String password) {
	loadDriver(dbDriver);
	Connection con=getConnection();

	String query="SELECT * FROM employer WHERE username=? AND password=?";

	PreparedStatement ps=null;
	try {
	ps=con.prepareStatement(query);

	ps.setString(1, username);
	ps.setString(2, password);
	
	ResultSet rs=ps.executeQuery();

	if(rs.next()) {
	return  true;
	}
	} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	}

	return false;
}
}

	