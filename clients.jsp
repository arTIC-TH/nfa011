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
		<th>Nom</th>
        <th>Prénom</th>
        <th>Code Postal</th>
		<th>Ville</th>
		<th>Email</th>
		<th>Telephone</th>
		<th>Date creation</th>
        <th>Commande client</th>
        <th>Supprimer client</th>
        <th>Edit</th>
        <th>Edit boton</th>
    <%
    try{
        Statement statement = conn.createStatement();
        ResultSet resultat = statement.executeQuery("SELECT * FROM clients ORDER BY id_client DESC");
        while(resultat.next()){
            out.println("<tr bgcolor='ffd9b3'>");
            out.println("<td>" + resultat.getString("nom_cli") + "</td>");
            out.println("<td>" + resultat.getString("prenom_cli") + "</td>");
            out.println("<td>" + resultat.getString("cp_cli") + "</td>");
            out.println("<td>" + resultat.getString("ville_cli") + "</td>");
            out.println("<td>" + resultat.getString("email_cli") + "</td>");
            out.println("<td>" + resultat.getString("tel_cli") + "</td>");
            out.println("<td>" + resultat.getString("date_crea_cli") + "</td>");
            out.println("<td><a href=http://localhost:8181/nfa011/commande.jsp?id_client=" + resultat.getString("id_client") + "> commandes </a></td>");
            out.println("<td><a href=http://localhost:8181/nfa011/deletecli.jsp?id_client=" + resultat.getString("id_client") + "> Supprimer Client </a></td>");
             out.println("<td><a href=http://localhost:8181/nfa011/chercheCliParNom_ok.jsp?id_client=" + resultat.getString("id_client") + "> Edit </a></td>");
            out.println("<td><button type='summit' formaction='http://localhost:8181/nfa011/chercheCliParNom_ok.jsp?id_client=" + resultat.getString("id_client")+"'>edit</button> </td>");
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