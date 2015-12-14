
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer List</title>
        <link rel="stylesheet" type="text/css" href="./stylesheet.css">
    </head>
    <body>
        <div class="wrap">
            
            <%@ include file="includes/header.jsp" %>
                <div class="box">
                <form name="searchForm" action="search" method="get">
            
            <input type="text" name="searchVal" value=""/>
            <br>
            <input type="submit" name="submit" value="Search"/>
            
        </form>
                </div>
            <%@ include file="includes/menu.jsp" %>
            
            
            
            <div class="main">  
                <h1>Customer Database</h1>

                <a href="read">View All Customer</a>
                <br><br>
                <a href="search.jsp">Search </a>
            </div>  
            
        <%@ include file="includes/footer.jsp" %>   
        
        </div>
    </body>
</html>
