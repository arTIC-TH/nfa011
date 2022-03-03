<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.text.*" errorPage="" %>
<%@page import="java.time.*"%>
<!DOCTYPE html PUBLIC "-"
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title> Page connexion </title>
</head>
<body>
    <%
    Connection conn = null;
    String url = "jdbc:mysql://localhost:3306/bdplante?useSSL=false&serverTimezone=UTC";
    String login="root";
    String password="770829-Terol";

    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, login, password);
            out.println ( "Conexion, ok");        
    } catch (SQLException ex) {
        out.println("SQLException : " + ex.getMessage());
        out.println("SQLState : " + ((SQLException) ex).getSQLState());
        out.println("VendorError : " + ((SQLException) ex).getErrorCode());
    }  catch (ClassNotFoundException e) {
        out.println(e.getMessage());
    } 
    %>
    </body>
    </html>