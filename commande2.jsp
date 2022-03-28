<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.text.*" errorPage="" %>
<%@include file="connexion.jsp" %>
<!DOCTYPE html> 
<head>
    <meta http-equiv="Content-Type"/>
    <title>Page index</title>
	<link href="style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<table width='80%' border='0'>
	<th>Id Commande</th>
    <th>Id Client</th>
    <th>Date Commande</th>
	<th>Montant Commande</th>
	<th>Deleted</th>
	<th>Date validation</th>
    <%
    try{
            Statement statement = conn.createStatement();
            ResultSet resultat = statement.executeQuery("SELECT * FROM commande ORDER BY id_comm DESC");
            while(resultat.next()){
            out.println("<tr bgcolor='ffd9b3'>");
            out.println("<td>" + resultat.getString("id_comm") + "</td>");
            out.println("<td>" + resultat.getString("id_client") + "</td>");
            out.println("<td>" + resultat.getString("date_comm") + "</td>");
            out.println("<td>" + resultat.getString("montant_comm") + "</td>");
            out.println("<td>" + resultat.getString("isdeleted_comm") + "</td>");
            out.println("<td>" + resultat.getString("date_validation") + "</td>");
             out.println("<td><a href=http://localhost:8181/nfa011/detail_commande.jsp?id_comm=" + resultat.getString("id_comm") + "> detail commande </a></td>");
			out.println("</tr>");
		}
	} catch (SQLException ex) {
        out.println("SQLException: " + ex.getMessage());
        out.println("SQLstate: " + ((SQLException) ex).getSQLState());
        out.println("VendorError: " +((SQLException) ex).getErrorCode());
    }
    %>
    </table>
</body>
</html>
