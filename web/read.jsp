
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="./stylesheet.css">
    </head>
    
    <% String table = (String) request.getAttribute("table"); %>
    
    <body>
        <h1>Customer</h1>
        <div class="box">
                <form name="searchForm" action="search" method="get">
            
            <input type="text" name="searchVal" value=""/>
            <br>
            <input type="submit" name="submit" value="Search"/>
            
        </form>
                </div>
            <%@ include file="includes/menu.jsp" %>
            <br><br>
        <%= table %>
        
        <br><br>
        
        
        
        
        
    </body>
</html>
