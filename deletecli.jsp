<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*, java.text.*" errorPage="" %>
<%@include file="connexion.jsp" %>
<!DOCTYPE html>
    <head>
        <meta http-equiv="Content-type"/> 
        <title>Page index</title>
    </head>
    <html>
        <body>

        <%
            String id_client = request.getParameter("id_client");
           
        try {
			Statement instruction = conn.createStatement();
			
            String SQL = "DELETE FROM commande WHERE id_client = "+ id_client;
            out.print(SQL);
            instruction.executeUpdate(SQL); 
            
            SQL = "DELETE FROM clients WHERE id_client = "+id_client;			
            out.print(SQL);           
            instruction.executeUpdate(SQL);
            
            out.println("Bien supprimé");
            out.println("<a href=\"clients.jsp\"_self\">afficher</a>");      
			
		  } catch (Exception ex) {
			out.println("SQLException: " + ex.getMessage());
			out.println("SQLState" + ((SQLException) ex).getSQLState());
			out.println("VendorError:" + ((SQLException) ex).getErrorCode());
          }
        %>
            
        </body>
    </html>