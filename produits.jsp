<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.text.*" errorPage="" %>
<%@include file="connexion.jsp" %>
<!DOCTYPE html> 
<head>
    <meta http-equiv="Content-Type"/>
    <title>Page index</title>
	<link href="style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<form method="post">
<table width='80%' border='0'>
		<th>Produit</th>
        <th>Image</th>
        <th>Data produit</th>
		<th>Quantite</th>
		<th>Derniere commande</th>
		<th>Message produit</th>
        <th>Supprimer produit</th>
        <th>Edit</th>
        <th>Edit boton</th>
    
    <%
    try{
        Statement statement = conn.createStatement();
        ResultSet resultat = statement.executeQuery("SELECT * FROM produit ORDER BY id_produit");
        while(resultat.next()){
            out.println("<tr bgcolor='ffd9b3'>");
            out.println("<td>" + resultat.getString("libelle_court_prod") + "</td>");
            out.println("<td><a href=" + resultat.getString("chemin_photo_prod")+"> image </a>"+"</td>");
            out.println("<td>" + resultat.getString("date_creat_prod") + "</td>");
            out.println("<td>" + resultat.getString("quantite_prod") + "</td>");	
            out.println("<td>" + resultat.getString("date_derniere_commande") + "</td>");
			out.println("<td>" + resultat.getString("message_prod") + "</td>");
            out.println("<td><a href=http://localhost:8181/nfa011/deleteprod.jsp?id_produit=" + resultat.getString("id_produit") + "> supprimer </a></td>");
            out.println("<td><a href=http://localhost:8181/nfa011/chercheProParNom_ok.jsp?id_produit=" + resultat.getString("id_produit") + "> Edit </a></td>");
            out.println("<td><button type='summit' formaction='http://localhost:8181/nfa011/chercheProParNom_ok.jsp?id_produit=" + resultat.getString("id_produit")+"'>edit</button> </td>");
			out.println("</tr>");
		}

	} catch (SQLException ex) {
        out.println("SQLException: " + ex.getMessage());
        out.println("SQLstate: " + ((SQLException) ex).getSQLState());
        out.println("VendorError: " +((SQLException) ex).getErrorCode());
    }
    %>
    </table>
     </form>
</body>
</html>