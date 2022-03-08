<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.text.*" errorPage="" %>
<%@include file="connexion.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Formulaire de Contact</title>
        <meta charset="UTF=8"/>
        <link rel="stylesheet" href="style.css" />
    </head>
    
<body>

		<%
		try{
			out.println("Select name"\"listeClient\" id=\"listeClient\">";
			Statement statement = conn.createStatement();
			ResultSet resultat = statement.executeQuery("SELECT id_client, nom_cli FROM clients ORDER BY id_client ASC");
			out.println("<select name='id_client'>");
			while(resultat.next()){
				Int id_=resultat.getInt("id_client");
				out.println("<option value='" + id_"\"> +
				resultat.getString("nom_cli")+"</option>");
				}
			out.println("</select>");		
		}
		catch (SQLException ex) {
		out.println("SQLException: " + ex.getMessage());
		out.println("SQLstate: " + ((SQLException) ex).getSQLState());
		out.println("VendorError: " +((SQLException) ex).getErrorCode());
		}
		%>
		
		<form action="updateCli_ok.jsp" method="post">
			<button type="submit" name="button" value="button1">Montrer detail client</button>
		</form>		
		
        <form action="ajoutCli_ok.jsp" method="post" name="ajout_form" >
			
			<label for="nom">Nom</label><br>
            <input type="text"  name="nom" required="required" placeholder="Votre nom"><br><br>
            
            <label for="prenom">Prenom</label><br>
            <input type="text"  name="prenom" required="required" placeholder="Votre Prenom"><br><br>

            <label for="adress">Adresse</label><br>
            <input type="text"  name="adresse" required="required" placeholder="Votre Adresse"><br><br>

            <label for="codePostal">CP</label><br>
            <input type="text"  name="cp" id="cp" required="required" placeholder="Votre Code Postal"><br><br>

            <label for="Ville">Ville</label><br>
            <input type="text"  name="ville" required="required" placeholder="Votre telephone"><br><br>

            <label for="email">Email</label><br>
            <input type="text"  name="email" required="required" placeholder="Votre email"><br><br>

            <label for="telephone">Tel</label><br>
            <input type="text"  name="telephone" required="required" placeholder="Votre telephone"><br><br>


           <input type="submit" value="Valider l'actualisation" id="bouton_envoi"><br><br>
            
        </form><br><br>
</body> 

</html>