<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<title>Tableau</title>
		<link rel="stylesheet" href="style.css">
	</head>
	<body>
    <h1> Menu Principal </h1>
		<div class="text">
        <table width="75%" border="1" cellpadding="2" cellspacing="2">
        <tr class="title">
          <th>Option</th>
          <th>Description</th>
          <th>Etat</th>
		  <th>Fichier</th>
          <th>Lien</th>
        </tr>
        <tr>
            <td>1. Afficher Clients</td>
            <td>Afficher clients</td>
            <td><img src="https://i.pinimg.com/564x/5e/6e/28/5e6e28600327c218c6dcc19ecf8caae2.jpg" width="20" height="20" alt="OK" /></a></td>
            <td>clients.jsp</td>
            <td><a href=http://localhost:8181/nfa011/clients.jsp> link </a></td>
        </tr>
        <tr>
            <td>2. Afficher Clients AZ</td>
            <td>Afficher clients par ordre alphabetique</td>
            <td><img src="https://i.pinimg.com/564x/5e/6e/28/5e6e28600327c218c6dcc19ecf8caae2.jpg" width="20" height="20" alt="OK" /></a></td>
            <td>clientsAZ.jsp</td>
            <td><a href=http://localhost:8181/nfa011/clientsAZ.jsp> link </a></td>
        </tr>
        <tr>
            <td>3. Afficher Clients Date</td>
            <td>Afficher clients par ordre date de creation</td>
            <td><img src="https://i.pinimg.com/564x/5e/6e/28/5e6e28600327c218c6dcc19ecf8caae2.jpg" width="20" height="20" alt="OK" /></a></td>    
            <td>clientsdate.jsp</td>
            <td><a href=http://localhost:8181/nfa011/clientsdate.jsp> link </a></td>
        </tr>
         <tr>
            <td>4. Afficher Produits</td>
            <td>Afficher tous des produits</td>
            <td><img src="https://i.pinimg.com/564x/5e/6e/28/5e6e28600327c218c6dcc19ecf8caae2.jpg" width="20" height="20" alt="OK" /></a></td>
            <td>produits.jsp</td>
            <td><a href=http://localhost:8181/nfa011/produits.jsp> link </a></td>
        </tr>
         <tr>
            <td>5. Ajouter Clients</td>
            <td>Ajouter client</td>
            <td><img src="https://i.pinimg.com/564x/5e/6e/28/5e6e28600327c218c6dcc19ecf8caae2.jpg" width="20" height="20" alt="OK" /></a></td>
            <td>formAjoutClient.jsp</td>
            <td><a href=http://localhost:8181/nfa011/formAjoutClient.jsp> link </a></td>
        </tr>
         <tr>
            <td>6. Ajouter Produits</td>
            <td>Ajouter produit</td>
			<td><img src="https://i.pinimg.com/564x/5e/6e/28/5e6e28600327c218c6dcc19ecf8caae2.jpg" width="20" height="20" alt="OK" /></a></td>
            <td>formAjoutProduit.jsp</td>
            <td><a href=http://localhost:8181/nfa011/formAjoutProduit.jsp> link </a></td>
        </tr>
         <tr>
            <td>7. Afficher Commandes</td>
            <td>Afficher commandes</td>
			<td><img src="https://i.pinimg.com/564x/5e/6e/28/5e6e28600327c218c6dcc19ecf8caae2.jpg" width="20" height="20" alt="OK" /></a></td>
			<td>commande.jsp</td>
            <td><a href=http://localhost:8181/nfa011/commande.jsp> link </a></td>
        </tr>
         <tr>
            <td>8. Afficher Commande de Client (>> where id client=?)</td>
            <td>Afficher commande du client</td>
            <td><img src="https://cdn-icons-png.flaticon.com/512/2943/2943255.png" width="18" height="18" alt="OK" /></a></td>
            <td>CommandeClient.jsp</td>
            <td><a href=http://localhost:8181/nfa011/CommandeClient.jsp> link </a></td>
        </tr>
        <tr>
            <td>9. Afficher Facture de commande </td>
            <td>Afficher facture de commande du client</td>
            <td><img src="https://cdn-icons-png.flaticon.com/512/2943/2943255.png" width="18" height="18" alt="OK" /></a></td>
            <td>AfficherFactureCommande.jsp</td>
            <td><a href=http://localhost:8181/nfa011/AfficherFactureCommande.jsp> link </a></td>
        </tr>
        <tr>
            <td>10. Modifier Client </td>
            <td>Modifier information de client</td>
            <td><img src="https://i.pinimg.com/564x/5e/6e/28/5e6e28600327c218c6dcc19ecf8caae2.jpg" width="20" height="20" alt="OK" /></a></td>
            <td>formUpdateClient.jsp</td>
            <td><a href=http://localhost:8181/nfa011/formUpdateClient.jsp> link </a></td>
        </tr>
        <tr>
            <td>11. Modifier produit</td>
            <td>Modifier information de produit</td>
            <td><img src="https://cdn-icons-png.flaticon.com/512/2943/2943255.png" width="18" height="18" alt="OK" /></a></td>
            <td>formUpdateProduit.jsp</td>
            <td><a href=http://localhost:8181/nfa011/formUpdateProduit.jsp> link </a></td>
        </tr>
    </table>
</div>
	</body>
</html>