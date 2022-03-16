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
			String SQL = "SELECT * FROM produit WHERE id_produit = "+id_produit;
			ResultSet resultat = instruction.executeQuery(SQL);
			while(resultat.next()){
				out.println("<input readonly type='text' name='id_produit' value='"+resultat.getString("id_produit")+"'/>");
				out.println("<br><br>");
				
				out.println("<label for='nom'>Nom</label><br>");
				out.println("<input type='text' name='nom' required='required' placeholder='Votre Produit' value='"+resultat.getString("libelle_court_prod")+"'/>");
				out.println("<br><br>");
				
				out.println("<label for='message_prod'>message_prod</label><br>");
				out.println("<input type='text' name='message_prod' required='required' placeholder='Votre Produit Mss' value='"+resultat.getString("message_prod")+"'/>");
				out.println("<br><br>");
				
				out.println("<label for='adress'>Adresse</label><br>");
				out.println("<input type='text' name='adresse' required='required' placeholder='Votre Adresse' value='"+resultat.getString("adr_cli")+"'/>");
				out.println("<br><br>");

				out.println("<label for='cp'>CP</label><br>");
				out.println("<input type='text' name='cp' required='required' placeholder='Votre Code Postal' value='"+resultat.getString("cp_cli")+"'/>");
				out.println("<br><br>");

				out.println("<label for='Ville'>Ville</label><br>");
				out.println("<input type='text' name='ville' required='required' placeholder='Votre Ville' value='"+resultat.getString("ville_cli")+"'/>");
				out.println("<br><br>");

				out.println("<label for='email'>Email</label><br>");
				out.println("<input type='text' name='email' required='required' placeholder='Votre email' value='"+resultat.getString("email_cli")+"'/>");
				out.println("<br><br>");
				
				out.println("<label for='telephone'>Tel</label><br>");
				out.println("<input type='text' name='telephone' required='required' placeholder='Votre telephone' value='"+resultat.getString("tel_cli")+"'/>");
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