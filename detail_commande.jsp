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
        String id_comm = request.getParameter("id_comm");
        if( id_comm != null && id_comm != ""){
            id_comm = "WHERE id_comm = "+id_comm;
        }
        Statement statement = conn.createStatement();
        ResultSet resultat = statement.executeQuery("SELECT * FROM detail_commande " + id_comm + " ORDER BY id_comm DESC");
        while(resultat.next()){
            out.println("<tr bgcolor='ffd9b3'>");
            out.println("<td>" + resultat.getString("id_detail_DC") + "</td>");
            out.println("<td>" + resultat.getString("id_comm") + "</td>");
            out.println("<td>" + resultat.getString("id_produit") + "</td>");
            out.println("<td>" + resultat.getString("Qte_crea_DC") + "</td>");
            out.println("<td>" + resultat.getString("date_crea_DC") + "</td>");
            out.println("<td>" + resultat.getString("is_deleted_DC") + "</td>");
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
