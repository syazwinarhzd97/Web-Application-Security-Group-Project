package loginform;
import java.sql.*;

public class Healthc {
	private String catID;

	
	 private double weight;


	 private String deworm;
	 private String vaccine;

		
	 private String breed;


	 private String preg;
	 private String neu;


	 private String healths;

	

	public Healthc(){

	 catID = "0";


	 deworm = "unknown";

	 vaccine = "unknown";

	 breed = "unknown";

	 preg = "unknown";
	 neu = "unknown";

	 healths = "unknown";

	}

	public void setCatID(String catID){

		  this.catID = catID;

		}



		public String getCatID(){

		 return catID;

		}
		public void setWeight(double weight){

			  this.weight = weight;

			}



			public double getWeight(){

			 return weight;

			}

			public void setDeworm(String deworm){

				  this.deworm = deworm;

				}



				public String getDeworm(){

				 return deworm;

				}

				public void setVaccine(String vaccine){

					  this.vaccine = vaccine;

					}



					public String getVaccine(){

					 return vaccine;

					}
	

	public void setBreed(String breed){

	  this.breed = breed;

	}



	public String getBreed(){

	 return breed;

	}
	public void setPreg(String preg){

		  this.preg = preg;

		}



		public String getPreg(){

		 return preg;

		}
	
		public void setNeu(String neu){

			  this.neu = neu;

			}



			public String getNeu(){

			 return neu;

			}
			public void setHealths(String healths){

				  this.healths = healths;

				}



				public String getHealths(){

				 return healths;

				}
	

	public boolean storeData(){

		 try

	        {

	           String sql = "";

	           Class.forName("com.mysql.jdbc.Driver");

	           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hcat","root","Beruang1301#");

	           sql="INSERT INTO hcats ( catID, weight, deworm, vaccine, breed, preg, neu, healths) VALUES (?,?,?,?,?,?,?,?)";

	           PreparedStatement statement = con.prepareStatement(sql);                

	           statement.setString(1, getCatID());

	        

	           statement.setDouble(2, getWeight());

	           statement.setString(3, getDeworm());

	           statement.setString(4, getVaccine());

	           statement.setString(5, getBreed());
	           statement.setString(6, getPreg());

	           statement.setString(7, getNeu());
	           statement.setString(8, getHealths());

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

	           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hcat","root","Beruang1301#");

	           sql="DELETE FROM hcats WHERE recordID = ?";

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

	           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hcat","root","Beruang1301#");

	           sql="UPDATE hcats SET catID = ?, weight = ?, deworm = ?, vaccine = ?, breed = ?, preg = ?,neu = ?, healths = ? WHERE recordID = ?";

	           PreparedStatement statement = con.prepareStatement(sql);                

	           statement.setString(1, getCatID());

	         
	           statement.setDouble(2, getWeight());

	           statement.setString(3, getDeworm());

	           statement.setString(4, getVaccine());

	         
	           statement.setString(5, getBreed());

	           statement.setString(6, getPreg());

	           statement.setString(7, getNeu());

	         
	           statement.setString(8, getHealths());

	          

	           statement.setInt(9, id);

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



