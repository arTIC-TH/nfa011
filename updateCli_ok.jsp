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
            String id_client = request.getParameter("id_client").value;
            out.print(id_client);
			String nom = request.getParameter("nom");
            String prenom = request.getParameter("prenom");
            String adresse = request.getParameter("adresse");
            String cp = request.getParameter("cp");
            String ville = request.getParameter("ville");
            String email = request.getParameter("email");
            String telephone = request.getParameter("telephone");
           
        try {
			Statement instruction = conn.createStatement();
			String SQL = "SELECT * FROM clients WHERE id_client = + '"+id_client+"')";
            out.print(SQL);
			ResultSet resultat = statement.executeQuery(SQL);
			while(resultat.next()){
				nom.value = resultat.getString("nom_cli");
				prenom.value = resultat.getString("prenom_cli");
			}                    
			
		  } catch (Exception ex) {
			out.println("SQLException: " + ex.getMessage());
			out.println("SQLState" + ((SQLException) ex).getSQLState());
			out.println("VendorError:" + ((SQLException) ex).getErrorCode());
          }
        %>
            
        </body>
    </html>