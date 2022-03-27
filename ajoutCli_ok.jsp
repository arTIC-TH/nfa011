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
            String nom = request.getParameter("nom");
            String prenom = request.getParameter("prenom");
            String adresse = request.getParameter("adresse");
            String cp = request.getParameter("cp");
            String ville = request.getParameter("ville");
            String email = request.getParameter("email");
            String telephone = request.getParameter("telephone");

            out.print(cp);
           
        try {
			Statement instruction = conn.createStatement();
			String SQL = "INSERT INTO clients(nom_cli, prenom_cli, adr_cli, cp_cli, ville_cli, email_cli, tel_cli) VALUES ('"+nom+"' , '"+prenom+"' , '"+adresse+"' , '"+cp+"' , '"+ville+"' , '"+email+"' , '"+telephone+"')";
            // siguiente linea para llevar traza
            out.print(SQL);
            instruction.executeUpdate(SQL);
            out.println("Bien ajouté");
            out.println("<a href=\"clients.jsp\"_self\">afficher</a>");
                    
			
		  } catch (Exception ex) {
			out.println("SQLException: " + ex.getMessage());
			out.println("SQLState" + ((SQLException) ex).getSQLState());
			out.println("VendorError:" + ((SQLException) ex).getErrorCode());
          }
        %>
            
        </body>
    </html>