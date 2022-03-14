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
			String nom = request.getParameter("nom");
            String prenom = request.getParameter("prenom");
            String adresse = request.getParameter("adresse");
            String cp = request.getParameter("cp");
            String ville = request.getParameter("ville");
            String email = request.getParameter("email");
            String telephone = request.getParameter("telephone");
           
        try {
			Statement instruction = conn.createStatement();
			String SQL = "UPDATE clients SET nom_cli='"+nom+"',"
			+" prenom_cli='"+prenom+"',"
			+" adr_cli='"+adresse+"',"
			+" cp_cli='"+cp+"',"
			+" ville_cli='"+ville+"',"
			+" email_cli='"+email+"',"
			+" tel_cli='"+telephone+"'"+
			" WHERE id_client = "+id_client;			
            out.print(SQL);
            instruction.executeUpdate(SQL);
                    out.println("Bien mise à jour");
                    out.println("<a href=\"clients.jsp\"_self\">afficher</a>");
                    
			
		  } catch (Exception ex) {
			out.println("SQLException: " + ex.getMessage());
			out.println("SQLState" + ((SQLException) ex).getSQLState());
			out.println("VendorError:" + ((SQLException) ex).getErrorCode());
          }
        %>
            
        </body>
    </html>