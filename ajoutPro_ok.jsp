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
            String libelle_court_prod = request.getParameter("libelle_court_prod");
            String chemin_photo_prod = request.getParameter("chemin_photo_prod");
            String quantite_prod = request.getParameter("quantite_prod");
            String message_prod = request.getParameter("message_prod");
            String date_debutVal_prix = request.getParameter("date_debutVal_prix");
            String date_finVal_prix = request.getParameter("date_finVal_prix");
            String prix_prix = request.getParameter("prix_prix");
            String id_produit ="";
        try {
			Statement instruction = conn.createStatement();
			String SQL = "INSERT INTO produit(libelle_court_prod, chemin_photo_prod, quantite_prod,  message_prod) VALUES ('"+libelle_court_prod+"' , '"+chemin_photo_prod+"' , '"+quantite_prod+"' , '"+message_prod+"')";
            instruction.executeUpdate(SQL);
            SQL = "SELECT id_produit FROM produit WHERE libelle_court_prod = '"+libelle_court_prod+"'";
            ResultSet resultat = instruction.executeQuery(SQL);
            while(resultat.next()){
                id_produit = resultat.getString("id_produit");
            }
            out.println(id_produit);       
            SQL = "INSERT INTO prix(id_produit, prix_prix) VALUES ("+id_produit+","+prix_prix+")";        
			out.println(SQL);
            instruction.executeUpdate(SQL);
            out.println("Bien ajouté");
            out.println("<a href=\"index.jsp\"_self\">afficher</a>");
		  } catch (Exception ex) {
			out.println("SQLException: " + ex.getMessage());
			out.println("SQLState" + ((SQLException) ex).getSQLState());
			out.println("VendorError:" + ((SQLException) ex).getErrorCode());
          }
        %>
            
        </body>
    </html>