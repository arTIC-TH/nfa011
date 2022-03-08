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
            String Produit = request.getParameter("Produit");
            String Image = request.getParameter("Image");
            String Fecha = request.getParameter("Fecha");
            String Quantite = request.getParameter("Quantite");
            String Derniere = request.getParameter("Derniere");
            String email = request.getParameter("Message");

           /* out.print(Derniere commande);*/
           
        try {
			Statement instruction = conn.createStatement();
			String SQL = "INSERT INTO produits(libelle_court_prod, chemin_photo_prod, date_creat_prod, quantite_prod, date_derniere_commande, message_prod) VALUES ('"+Produit+"' , '"+Image+"' , '"+Fecha+"' , '"+Quantite+"' , '"+Derniere+"' , '"+Message+"')";
               out.print(SQL);
                  instruction.executeUpdate(SQL);
                    out.println("Bien ajouté");
                    out.println("<a href=\"produits.jsp\"_self\">afficher</a>");
                    
			
		  } catch (Exception ex) {
			out.println("SQLException: " + ex.getMessage());
			out.println("SQLState" + ((SQLException) ex).getSQLState());
			out.println("VendorError:" + ((SQLException) ex).getErrorCode());
          }
        %>
            
        </body>
    </html>