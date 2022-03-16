<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*, java.text.*" errorPage="" %>
<%@include file="connexion.jsp" %>
<!DOCTYPE html>
    <head>
        <meta http-equiv="Content-type"/> 
        <title>Page index</title>
    </head>
    <html>
        <body>
		<form action="updatePro_ok.jsp" method="post" name="ajout_form" >
        <%  
			
			String id_produit = request.getParameter("id_produit");
           
        try {
			Statement instruction = conn.createStatement();
			String SQL = "SELECT * FROM produit, prix WHERE produit.id_produit = prix.id_produit and produit.id_produit = "+id_produit;
			ResultSet resultat = instruction.executeQuery(SQL);
			while(resultat.next()){
				out.println("<input readonly type='text' name='id_produit' value='"+resultat.getString("id_produit")+"'/>");
				out.println("<br><br>");	

                out.println("<label for='libelle_court_prod'>Producto</label><br>");
				out.println("<input type='text' name='libelle_court_prod' required='required' placeholder='Votre Produit' value='"+resultat.getString("libelle_court_prod")+"'/>");
				out.println("<br><br>");
				
				out.println("<label for='chemin_photo_prod'>Photo produit</label><br>");
				out.println("<input type='text' name='chemin_photo_prod' required='required' placeholder='Votre Produit' value='"+resultat.getString("chemin_photo_prod")+"'/>");
				out.println("<br><br>");
				
				out.println("<label for='date_creat_prod'>Date creation</label><br>");
				out.println("<input type='text' name='date_creat_prod' required='required' placeholder='Votre Produit' value='"+resultat.getString("date_creat_prod")+"'/>");
				out.println("<br><br>");

				out.println("<label for='quantite_prod'>Quantite</label><br>");
				out.println("<input type='text' name='quantite_prod' required='required' placeholder='Votre Quantite' value='"+resultat.getString("quantite_prod")+"'/>");
				out.println("<br><br>");

				out.println("<label for='date_derniere_commande'>date_derniere_commande</label><br>");
				out.println("<input type='text' name='date_derniere_commande' required='required' placeholder='date_derniere_commande' value='"+resultat.getString("date_derniere_commande")+"'/>");
				out.println("<br><br>");

				out.println("<label for='message_prod'>message_prod</label><br>");
				out.println("<input type='text' name='message_prod' required='required' placeholder='Votre message_prod' value='"+resultat.getString("message_prod")+"'/>");
				out.println("<br><br>");
					
                out.println("<label for='prix_prix'>prix_prix</label><br>");
				out.println("<input type='text' name='prix_prix' required='required' placeholder='Votre prix_prix' value='"+resultat.getString("prix_prix")+"'/>");
				out.println("<br><br>");
                }                    
			
		  } catch (Exception ex) {
			out.println("SQLException: " + ex.getMessage());
			out.println("SQLState" + ((SQLException) ex).getSQLState());
			out.println("VendorError:" + ((SQLException) ex).getErrorCode());
          }
        %>  
            <input type="submit" value="Valider l'actualisation" id="bouton_envoi"><br><br>
            
        </form>
		
        </body>
    </html>