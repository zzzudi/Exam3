
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Customer</title>
        <link rel="stylesheet" type="text/css" href="./stylesheet.css">
    </head>
    <body>
        <h1>Search Customers</h1>
        <%@ include file="includes/menu.jsp" %>
        <form name="searchForm" action="search" method="get">
            
            <input type="text" name="searchVal" value=""/>
            <br>
            <input type="submit" name="submit" value="Search"/>
            
        </form>
        
        
        
        
    </body>
</html>
