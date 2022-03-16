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
			String libelle_court_prod = request.getParameter("libelle_court_prod");
            String chemin_photo_prod = request.getParameter("chemin_photo_prod");
            String date_creat_prod = request.getParameter("date_creat_prod");
            String quantite_prod = request.getParameter("quantite_prod");
            String date_derniere_commande = request.getParameter("date_derniere_commande");
            String message_prod = request.getParameter("message_prod");
			String prix_prix = request.getParameter("prix_prix");
           
        try {
			Statement instruction = conn.createStatement();
			String SQL = "UPDATE produit SET id_produit='"+id_produit+"',"
			+" libelle_court_prod='"+libelle_court_prod+"',"
			+" chemin_photo_prod='"+chemin_photo_prod+"',"
		//	+" date_creat_prod='"+date_creat_prod+"',"
			+" quantite_prod='"+quantite_prod+"',"
		//	+" date_derniere_commande='"+date_derniere_commande+"',"+
            +" message_prod='"+message_prod+"'"
			+" WHERE id_produit = "+id_produit;			
            out.print(SQL);
            instruction.executeUpdate(SQL);
            SQL = "UPDATE prix SET prix_prix = "+prix_prix+" WHERE id_produit = " + id_produit;
            instruction.executeUpdate(SQL);
            out.println("Bien mise à jour");
            out.println("<a href=\"produits.jsp\"_self\">afficher</a>");
                    
			
		  } catch (Exception ex) {
			out.println("SQLException: " + ex.getMessage());
			out.println("SQLState" + ((SQLException) ex).getSQLState());
			out.println("VendorError:" + ((SQLException) ex).getErrorCode());
          }
        %>
            
        </body>
    </html>