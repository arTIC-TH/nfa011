<!DOCTYPE html>
<html>
    <head>
        <title>Formulaire de Produit</title>
        <meta charset="UTF=8"/>
        <link rel="stylesheet" href="style.css" />
    </head>
    
<body>
        <form action="ajoutPro_ok.jsp" method="post" name="ajout_form" >

            <label for="libelle_court_prod">libelle_court_prod</label><br>
            <input type="text"  name="libelle_court_prod" required="required" placeholder="Votre Produit"><br><br>
            
            <label for="chemin_photo_prod">chemin_photo_prod</label><br>
            <input type="chemin_photo_prod"  name="chemin_photo_prod" required="required" placeholder="Votre Image"><br><br>


            <label for="quantite_prod">quantite_prod</label><br>
            <input type="text" name="quantite_prod" required="quantite_prod" placeholder="quantite_prod"><br><br>

            <label for="message_prod">message_prod</label><br>
            <input type="text"  name="message_prod" required="message_prod" placeholder="Message"><br><br>

            <label for="date_debutVal_prix">date_debutVal_prix</label><br>
            <input type="text" name="date_debutVal_prix" required="date_debutVal_prix" placeholder="date_debutVal_prix"><br><br>

            <label for="date_finVal_prix">date_debutVal_prix</label><br>
            <input type="text" name="date_finVal_prix" required="date_finVal_prix" placeholder="date_finVal_prix"><br><br>

            <label for="prix_prix">date_debutVal_prix</label><br>
            <input type="text" name="prix_prix" required="prix_prix" placeholder="prix_prix"><br><br>

           <input type="submit" value="Valider l'information" id="bouton_envoi"><br><br>
            
        </form><br><br>
</body> 

</html>