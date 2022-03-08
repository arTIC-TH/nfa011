<!DOCTYPE html>
<html>
    <head>
        <title>Formulaire de Produit</title>
        <meta charset="UTF=8"/>
        <link rel="stylesheet" href="style.css" />
    </head>
    
<body>
        <form action="ajoutPro_ok.jsp" method="post" name="ajout_form" >

            <label for="Produit">Nom</label><br>
            <input type="text"  name="Produit" required="required" placeholder="Votre Produit"><br><br>
            
            <label for="Image">Imagen</label><br>
            <input type="text"  name="Image" required="required" placeholder="Votre Image"><br><br>

            <label for="Fecha">Fecha</label><br>
            <input type="text"  name="Fecha" required="required" placeholder="Fecha"><br><br>

            <label for="Quantite">Quantite</label><br>
            <input type="text"  name="Quantite" required="required" placeholder="Quantite produit"><br><br>

            <label for="Derniere">Derniere</label><br>
            <input type="text"  name="Derniere" required="required" placeholder="Votre Derniere"><br><br>

            <label for="Message">Message produit</label><br>
            <input type="text"  name="Message" required="required" placeholder="Message"><br><br>


           <input type="submit" value="Valider l'information" id="bouton_envoi"><br><br>
            
        </form><br><br>
</body> 

</html>