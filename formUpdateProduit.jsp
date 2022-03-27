<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.text.*" errorPage="" %>
<%@include file="connexion.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Formulaire de Produit</title>
        <meta charset="UTF=8"/>
        <link rel="stylesheet" href="style.css" />
    </head>
    
<body>
		<form action="chercheProParNom_ok.jsp" method="post" name="ajout_form">
		<%
		try{
			Statement statement = conn.createStatement();
			ResultSet resultat = statement.executeQuery("SELECT id_produit, libelle_court_prod FROM produit ORDER BY id_produit");
			out.println("<select name='id_produit'>");
			while(resultat.next()){
				out.println("<option value='" + resultat.getString("id_produit") + "'>" + resultat.getString("libelle_court_prod") + "</option>");
			}
			out.println("</select>");
		} catch (SQLException ex) {
			out.println("SQLException: " + ex.getMessage());
			out.println("SQLstate: " + ((SQLException) ex).getSQLState());
			out.println("VendorError: " +((SQLException) ex).getErrorCode());
		}
		%>
		
			<input type="submit" value="Montrer detail produit" id="bouton_detail"/>
		</form>		
		
        <br><br>
</body> 

</html>