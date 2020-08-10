package loginform;
import java.sql.*;
public class Adopter {
	private String adopt;


	 private String ic;
	 private String gender;

		
	 private String address;


	 private String phone;
	 private String date;


	 private String catID;




	public Adopter(){

	 adopt = "unknown";


	 ic = "unknown";

	 gender = "unknown";

	 address = "unknown";

	 phone = "unknown";
	 date = "unknown";

	 catID = "unknown"; 
       

	}

	
		public void setAdopt(String adopt){

			  this.adopt = adopt;

			}



			public String getAdopt(){

			 return adopt;

			}

			public void setIC(String ic){

				  this.ic = ic;

				}



				public String getIC(){

				 return ic;

				}

				public void setGender(String gender){

					  this.gender = gender;

					}



					public String getGender(){

					 return gender;

					}
	

	public void setAddress(String address){

	  this.address = address;

	}



	public String getAddress(){

	 return address;

	}
	public void setPhone(String phone){

		  this.phone = phone;

		}



		public String getPhone(){

		 return phone;

		}
	
		public void setDate(String date){

			  this.date = date;

			}



			public String getDate(){

			 return date;

			}
			
	public void setCatID(String catID){

		  this.catID = catID;

		}
public String getCatID(){

		 return catID;

		}



	public boolean storeData(){

		 try

	        {

	           String sql = "";

	           Class.forName("com.mysql.jdbc.Driver");

	           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/adoption","root","Beruang1301#");

	           sql="INSERT INTO adoptions ( adopt, ic, gender, address, phone, date, catID) VALUES (?,?,?,?,?,?,?)";

	           PreparedStatement statement = con.prepareStatement(sql);                

	           statement.setString(1, getAdopt());

	        

	           statement.setString(2, getIC());

	           statement.setString(3, getGender());

	           statement.setString(4, getAddress());

	           statement.setString(5, getPhone());
	           statement.setString(6, getDate());

	           statement.setString(7, getCatID());
	          
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
	

	

