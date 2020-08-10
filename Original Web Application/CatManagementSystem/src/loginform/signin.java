package loginform;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

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

	           String sql = "";

	           Class.forName("com.mysql.jdbc.Driver");

	           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/firstdb","root","Beruang1301#");

	           sql="INSERT INTO users (login, password) VALUES (?,?)";

	           PreparedStatement statement = con.prepareStatement(sql);                

	           statement.setString(1, getLogin());

	           statement.setString(2, getPassword());

	          

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


