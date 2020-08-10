package loginform;
import java.sql.*;
public class Cat {
	private String catID;

	 private String name;

	 private String gender;


	 private String color;



	public Cat(){

	 catID = "0";

	 name = "unknown";

	 

	 gender = "unknown";

	 color = "unknown";


	}







	

	public void setCatID(String catID){

	  this.catID = catID;

	}



	public String getCatID(){

	 return catID;

	}

	public void setName(String name){

		  this.name = name;

		}



		public String getName(){

		 return name;

		}
		public void setGender(String gender){

			  this.gender = gender;

			}



			public String getGender(){

			 return gender;

			}
			public void setColor(String color){

				  this.color = color;

				}



				public String getColor(){

				 return color;

				}
	

	public boolean storeData(){

		 try

	        {

	           String sql = "";

	           Class.forName("com.mysql.jdbc.Driver");

	           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/catregistration","root","Beruang1301#");

	           sql="INSERT INTO catdb (catID, name, gender, color) VALUES (?,?,?,?)";

	           PreparedStatement statement = con.prepareStatement(sql);                

	           statement.setString(1, getCatID());

	           statement.setString(2, getName());

	           statement.setString(3, getGender());

	           statement.setString(4, getColor());


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

	

	public boolean deleteData(int id){

		 try

	        {

	           String sql = "";

	           Class.forName("com.mysql.jdbc.Driver");

	           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cat","root","Beruang1301#");

	           sql="DELETE FROM newcat WHERE recordID = ?";

	           PreparedStatement statement = con.prepareStatement(sql);                

	           statement.setInt(1, id);

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

	

	public boolean updateData(int id){

		 try

	        {

	           String sql = "";

	           Class.forName("com.mysql.jdbc.Driver");

	           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cat","root","Beruang1301#");

	           sql="UPDATE newcat SET catID = ?, name = ?, gender = ?, color = ? WHERE recordID = ?";

	           PreparedStatement statement = con.prepareStatement(sql);                

	           statement.setString(1, getCatID());

	           statement.setString(2, getName());

	           statement.setString(3, getGender());

	           statement.setString(4, getColor());

	           statement.setInt(5, id);

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

