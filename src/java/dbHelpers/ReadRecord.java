
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


public class ReadRecord {
    
    private Connection conn;
    private ResultSet results;
    
    private Customers customer = new Customers();
    private int customerID;
    
    
    
    public ReadRecord (int customerID) {
    
        Properties props = new Properties();
        InputStream instr = getClass().getResourceAsStream("dbConn.properties");
        try {
            props.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    String driver = props.getProperty("driver.name");
    String url = props.getProperty("server.name");
    String username = props.getProperty("user.name");
    String passwd = props.getProperty("user.password");
    
    this.customerID = customerID;
    
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = DriverManager.getConnection(url, username,passwd);
        } catch (SQLException ex) {
            Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
        }

}

    
    public void doRead() {
        try {
            //set up a string to hold query
            String query = "select * from customer where custID= ?";
            //create a preparedstatement using our query string
            PreparedStatement ps = conn.prepareStatement(query);
            
            //fill in the prepared statement
            ps.setInt(1, customerID);
            
            //execute the query
            this.results = ps.executeQuery();
            
            this.results.next();
            
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
        } catch (SQLException ex) {
            Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
        }






}
    
    public Customers getCustomer() {
    
        return this.customer;
        
    }
    
}
