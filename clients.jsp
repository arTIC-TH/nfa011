<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.text.*" errorPage="" %>
<%@include file="connexion.jsp" %>
<!DOCTYPE html> 
<head>
    <meta http-equiv="Content-Type"/>
    <title>Page index</title>
	<link href="style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<table width='100%' border='0'>
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
