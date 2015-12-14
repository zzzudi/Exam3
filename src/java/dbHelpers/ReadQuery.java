
package dbHelpers;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Customers;

public class ReadQuery {
    
    private Connection conn;
    private ResultSet results;
    
    public ReadQuery() {
    
    Properties props = new Properties();
    InputStream instr = getClass().getResourceAsStream("dbConn.properties");
        try {
            props.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    String driver = props.getProperty("driver.name");
    String url = props.getProperty("server.name");
    String username = props.getProperty("user.name");
    String passwd = props.getProperty("user.password");
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = DriverManager.getConnection(url, username,passwd);
        } catch (SQLException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    }
    
    public void doRead(){
     
        try {
            String query = "select * from customer";
            PreparedStatement ps = conn.prepareStatement(query);
            this.results= ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public String getHTMLtable() {
        String table = "";
        
        table += "<table border=1>";
        try {
            while(this.results.next()){
                
                Customers customer = new Customers();
                customer.setCustomerID(this.results.getInt("custID"));
                customer.setFirstName(this.results.getString("firstname"));
                customer.setLastName(this.results.getString("lastname"));
                customer.setAddress1(this.results.getString("address1"));
                customer.setAddress2(this.results.getString("address2"));
                customer.setCity(this.results.getString("city"));
                customer.setState(this.results.getString("state"));
                customer.setZip(this.results.getString("zip"));
                customer.setEmailAddress(this.results.getString("emailaddress"));
                customer.setAge(this.results.getInt("age"));
                
                
                table +="<tr>";
                
                table +="<td>";
                table += customer.getCustomerID();
                table +="</td>";
                
                table +="<td>";
                table += customer.getFirstName();
                table +="</td>";
                
                table +="<td>";
                table += customer.getLastName();
                table +="</td>";
                
                table +="<td>";
                table += customer.getAddress1();
                table +="</td>";
                
                table +="<td>";
                table += customer.getAddress2();
                table +="</td>";
                
                table +="<td>";
                table += customer.getCity();
                table +="</td>";
                
                table +="<td>";
                table += customer.getState();
                table +="</td>";
                
                table +="<td>";
                table += customer.getZip();
                table +="</td>";
                
                table +="<td>";
                table += customer.getEmailAddress();
                table +="</td>";
                
                table +="<td>";
                table += customer.getAge();
                table +="</td>";
                
                table +="<td>";
                table += "<a href=update?customerID=" + customer.getCustomerID() + "> Update </a>" + "<a href=delete?customerID=" + customer.getCustomerID() + "> Delete </a>";
                table +="</td>";
                
                table +="</tr>";
                
                
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        table += "</table>";
                return table;
    
    }
    
    
}
