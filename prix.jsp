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
    <%
    try{
        Statement statement = conn.createStatement();
        ResultSet resultat = statement.executeQuery("SELECT * FROM prix ORDER BY id_prix DESC");
        while(resultat.next()){
            out.println("<tr bgcolor='ffd9b3'>");
            out.println("<td>" + resultat.getString("date_debutVal_prix") + "</td>");
            out.println("<td>" + resultat.getString("date_finVal_prix") + "</td>");
            out.println("<td>" + resultat.getString("isdeleted") + "</td>");
            out.println("<td>" + resultat.getString("id_produit") + "</td>");
			 out.println("<td>" + resultat.getString("prix_prix") + "</td>");
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
