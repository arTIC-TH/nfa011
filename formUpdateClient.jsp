<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.text.*" errorPage="" %>
<%@include file="connexion.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Formulaire de Client</title>
        <meta charset="UTF=8"/>
        <link rel="stylesheet" href="style.css" />
    </head>
    
<body>
		<form action="chercheCliParNom_ok.jsp" method="post" name="ajout_form">
		<%
		try{
			Statement statement = conn.createStatement();
			ResultSet resultat = statement.executeQuery("SELECT id_client, nom_cli FROM clients ORDER BY id_client");
			out.println("<select name='id_client'>");
			while(resultat.next()){
				out.println("<option value='" + resultat.getString("id_client") + "'>" + resultat.getString("nom_cli") + "</option>");
			}
			out.println("</select>");
		} catch (SQLException ex) {
			out.println("SQLException: " + ex.getMessage());
			out.println("SQLstate: " + ((SQLException) ex).getSQLState());
			out.println("VendorError: " +((SQLException) ex).getErrorCode());
		}
		%>
		
			<input type="submit" value="Montrer detail client" id="bouton_detail"/>
		</form>		
		
        <br><br>
</body> 

</html>