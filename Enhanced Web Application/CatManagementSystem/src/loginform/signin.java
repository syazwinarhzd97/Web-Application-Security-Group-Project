package loginform;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.security.*; 
import java.math.BigInteger;
public class signin {
	private String login;

	 private String password;

	


	public signin(){

	 login = "unknown";

	 password = "unknown";

	 


	}




	public void setLogin(String login){
		

	  this.login = login;
		
	}
    

	public String getLogin(){
		
	 return login;
	
	}

	public void setPassword(String password){
		
			this.password = password;
		
		}

    

		public String getPassword(){
		
		 return password;

		}
	
	

	public boolean storeData(){
		
		 try

	        {
			
			
			 MessageDigest md = MessageDigest.getInstance("SHA-256");
	          md.update(getPassword().getBytes());
	          BigInteger Hash = new BigInteger(1 , md.digest());
	          String HashWord = Hash.toString(16);
			   
	           String sql = "";

	           Class.forName("com.mysql.jdbc.Driver");

	           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/firstdb","root","Beruang1301#");

	           sql="{call getuser(?,?)}";

	           CallableStatement statement = con.prepareCall(sql);                

	           statement.setString(1, getLogin());

	           statement.setString(2, HashWord);


	           statement.executeUpdate();

	           statement.close();

	           con.close();

	           return true;    

	        }

	        catch(Exception ex)

	        {

	        	return false;

	        }   

	}
}


