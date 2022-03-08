<!DOCTYPE html>
<html>
    <head>
        <title>Formulaire de Client</title>
        <meta charset="UTF=8"/>
        <link rel="stylesheet" href="style.css" />
    </head>
    
<body>
        <form action="ajoutCli_ok.jsp" method="post" name="ajout_form" >

            <label for="nom">Nom</label><br>
            <input type="text"  name="nom" required="required" placeholder="Votre nom"><br><br>
            
            <label for="prenom">Prenom</label><br>
            <input type="text"  name="prenom" required="required" placeholder="Votre Prenom"><br><br>

            <label for="adress">Adresse</label><br>
            <input type="text"  name="adresse" required="required" placeholder="Votre Adresse"><br><br>

            <label for="codePostal">CP</label><br>
            <input type="text"  name="cp" id="cp" required="required" placeholder="Votre Code Postal"><br><br>

            <label for="Ville">Ville</label><br>
            <input type="text"  name="ville" required="required" placeholder="Votre telephone"><br><br>

            <label for="email">Email</label><br>
            <input type="text"  name="email" required="required" placeholder="Votre email"><br><br>

            <label for="telephone">Tel</label><br>
            <input type="text"  name="telephone" required="required" placeholder="Votre telephone"><br><br>


           <input type="submit" value="Valider l'inscription" id="bouton_envoi"><br><br>
            
        </form><br><br>
</body> 

</html>