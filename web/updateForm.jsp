
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Customers" %>
<% Customers customer = (Customers) request.getAttribute("customer"); %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update A Customer</title>
        <link rel="stylesheet" type="text/css" href="./stylesheet.css">
    </head>
    <body>
        <h1>Update A Customer Record</h1>
        <div class="box">
                <form>
                <input type="text" name="searchVal" value=""/>
                <br>
                <input type="submit" name="submit" value="Search"/>
                </form>
                </div>
            <%@ include file="includes/menu.jsp" %>
            
        <form name ="updateForm" action="updateCustomer" method="get">
            
            <label>Customer ID:</label><br>
            <input type="text" name="id" value="<%= customer.getCustomerID() %>" readonly/>
            <br>
            
            <label>First Name:</label><br>  
            <input type="text" name="firstname" value="<%=customer.getFirstName()  %>"/>
            <br>
            
            <label>Last Name:</label><br>
            <input type="text" name="lastname" value="<%=customer.getLastName()  %>"/>
            <br>
            
            <label>Address1:</label><br>
            <input type="text" name="address1" value="<%=customer.getAddress1()  %>"/>
            <br>
            
            <label>Address2:</label><br>
            <input type="text" name="address2" value="<%=customer.getAddress2()  %>"/>
            <br>
            
            <label>City:</label><br>
            <input type="text" name="city" value="<%=customer.getCity()  %>"/>
            <br>
            
            <label>State:</label><br>
            <input type="text" name="state" value="<%=customer.getState()  %>"/>
            <br>
            
            <label>Zip:</label><br>
            <input type="text" name="zip" value="<%=customer.getZip()  %>"/>
            <br>
            
            <label>Email Address:</label><br>
            <input type="text" name="email" value="<%=customer.getEmailAddress()  %>"/>
            <br>
            
            <label>Age:</label><br>
            <input type="text" name="age" value="<%=customer.getAge()  %>"/>
            <br>
            
            <input type="reset" name="reset" value="Clear"/>
            <input type="submit" name="submit" value="Update"/>
        </form>
    </body>
</html>
