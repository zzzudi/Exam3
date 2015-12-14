
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add A New Customer</title>
        <link rel="stylesheet" type="text/css" href="./stylesheet.css">
        <script type="text/javascript"></script>
    </head>
    <body>
        <h1>Add A New Customer
         
        </h1>
        <div class="box">
                <form name="searchForm" action="search" method="get">
            
            <input type="text" name="searchVal" value=""/>
            <br>
            <input type="submit" name="submit" value="Search"/>
            
        </form>>
                </div>
            <%@ include file="includes/menu.jsp" %>
        
        <br><br>
        
        <form name ="addForm" action="addCustomer" method="get">
            
            <label>First Name*:</label><br>
            <input type="text" name="firstname" value="" required />
            <br>
            <label>Last Name*:</label><br>
            <input type="text" name="lastname" value=""  required/>
            <br>
            <label>Address1*:</label><br>
            <input type="text" name="address1" value=""  required/>
            <br>
            <label>Address2:</label><br>
            <input type="text" name="address2" value="" />
            <br>
            <label>City*:</label><br>
            <input type="text" name="city" value="" required/>
            <br>
            <label>State*:</label><br>
            
            <select name="state" required>
                            <option value="">Please choose a state...</option>
                                    <option value="AL">Alabama</option>
                                    <option value="AK">Alaska</option>
                                    <option value="AZ">Arizona</option>
                                    <option value="AR">Arkansas</option>
                                    <option value="CA">California</option>
                                    <option value="CO">Colorado</option>
                                    <option value="CT">Connecticut</option>
                                    <option value="DE">Delaware</option>
                                    <option value="DC">District of Columbia</option>
                                    <option value="FL">Florida</option>
                                    <option value="GA">Georgia</option>
                                    <option value="HI">Hawaii</option>
                                    <option value="ID">Idaho</option>
                                    <option value="IL">Illinois</option>
                                    <option value="IN">Indiana</option>
                                    <option value="IA">Iowa</option>
                                    <option value="KS">Kansas</option>
                                    <option value="KY">Kentucky</option>
                                    <option value="LA">Louisiana</option>
                                    <option value="ME">Maine</option>
                                    <option value="MD">Maryland</option>
                                    <option value="MA">Massachusetts</option>
                                    <option value="MI">Michigan</option>
                                    <option value="MN">Minnesota</option>
                                    <option value="MS">Mississippi</option>
                                    <option value="MO">Missouri</option>
                                    <option value="MT">Montana</option>
                                    <option value="NE">Nebraska</option>
                                    <option value="NV">Nevada</option>
                                    <option value="NH">New Hampshire</option>
                                    <option value="NJ">New Jersey</option>
                                    <option value="NM">New Mexico</option>
                                    <option value="NY">New York</option>
                                    <option value="NC">North Carolina</option>
                                    <option value="ND">North Dakota</option>
                                    <option value="OH">Ohio</option>
                                    <option value="OK">Oklahoma</option>
                                    <option value="OR">Oregon</option>
                                    <option value="PA">Pennsylvania</option>
                                    <option value="RI">Rhode Island</option>
                                    <option value="SC">South Carolina</option>
                                    <option value="SD">South Dakota</option>
                                    <option value="TN">Tennessee</option>
                                    <option value="TX">Texas</option>
                                    <option value="UT">Utah</option>
                                    <option value="VT">Vermont</option>
                                    <option value="VA">Virginia</option>
                                    <option value="WA">Washington</option>
                                    <option value="WV">West Virginia</option>
                                    <option value="WI">Wisconsin</option>
                                    <option value="WY">Wyoming</option>
            </select>
            <br>
            <label>Zip*:</label><br>
            <input type="text" name="zip" value=""  required/>
            <br>
            <label>Email Address*:</label><br>
            <input type="text" name="email" value=""  required/>
            <br>
            <label>Age:</label><br>
            <input type="number"  min="1" name="age" value="" required/>
            <br>
            <input type="reset" name="reset" value="Clear" />
            <input type="submit" name="submit" value="Submit"/>
            
            
           
        </form>
        
    </body>
</html>
