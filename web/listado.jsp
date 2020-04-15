
<%@page import ="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h1>LISTADO DE USUARIOS</h1>
        <table border="1" width="600">
            <tr bgcolor="skyblue">
                <th>codigo</th><th>nombre</th>
                <th>edad</th><th>sexo</th>
                <th>password</th>
        <%
        Connection cnx=null;
        Statement sta=null;
        ResultSet rs=null;
        
try{
       Class.forName("com.mysql.jdbc.Driver");
       cnx=DriverManager.getConnection("jdbc:mysql://localhost/ejemplojsp?user=root&password=");


       sta=cnx.createStatement();
       rs=sta.executeQuery("select *from usuarios");
      
       while(rs.next()){
       %>
       <tr>
          <th> <%=rs.getString(1)%> </th>
          <th> <%=rs.getString(2)%> </th>
          <th> <%=rs.getString(3)%> </th>
          <th> <%=rs.getString(4)%> </th>
          <th> <%=rs.getString(5)%> </th>
       </tr>
        <%
       }
        
     
         
     sta.close();
     rs.close();
     cnx.close();     


}catch(Exception e){}
      %>
       
        
            
    </body>
</html>
