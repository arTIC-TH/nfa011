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
            String id_produit = request.getParameter("id_produit");
           
        try {
			Statement instruction = conn.createStatement();
			
            String SQL = "DELETE FROM prix WHERE id_produit = "+ id_produit;
            out.print(SQL);
            instruction.executeUpdate(SQL); 
            
            SQL = "DELETE FROM produit WHERE id_produit = "+id_produit;			
            out.print(SQL);           
            instruction.executeUpdate(SQL);
            
            out.println("Bien supprimé");
            out.println("<a href=\"produits.jsp\"_self\">afficher</a>");
                    
			
		  } catch (Exception ex) {
			out.println("SQLException: " + ex.getMessage());
			out.println("SQLState" + ((SQLException) ex).getSQLState());
			out.println("VendorError:" + ((SQLException) ex).getErrorCode());
          }
        %>
            
        </body>
    </html>