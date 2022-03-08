<%@pagecontentType="text/html" pageEncoding=UTF-8%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<head>
</head>
<html>
<body>
<%
    String nom = request.getParameter("nom");
    String prenom = request.getParameter("prenom");
    String adresse = request.getParameter("add");
    String codeP = request.getParameter("cp");
    String Ville = request.getParameter("ville");
    String mail = request.getParameter("email");
    String tel = request.getParameter("tel");
 %>   
    try{
    Statement instruction = con.createStatement();
    String SQL="INSERT TO produit 
	(libelle_court_prod, chemin_photo_prod, date_creat_prod, quantite_prod, date_derniere_commande, message_prod)
	(nom_cli, prenom_cli,adr_cli,ville_cli,email_cli,tel_cli) 
	VALUES ('"+nom"','"+prenom+"','"+adresse+"','"+codeP+"','"+ville+"','"+mail+"','"+tel+"')";

        instruction.executeUpdate(SQL);
        out.println("Bien ajouté");
        out.println("<a hred=\"index.jsp\"target=\"_self\">afficher</a>");
            }
            catch (Exception ex) {....}
    %>    

 }