<%@ page pageEncoding="utf-8"%>
 <!--
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

<h1>Profil de l'utilisateur</h1>
    <p>Prénom: ${requestScope.nom_prenom}</p>
    <p>Nom d'utilisateur: ${requestScope.nom_utilisateur}</p>
    <p>Adresse e-mail: ${requestScope.email}</p>

    <h2>Modifier le profil</h2>
    <form action="profile" method="post">
        <label for="np">Prénom:</label>
        <input type="text" id="np" name="np" value="${requestScope.nom_prenom}" /><br>

        <label for="nom">Nom d'utilisateur:</label>
        <input type="text" id="nom" name="nom" value="${requestScope.nom_utilisateur}" /><br>

        <label for="email">Adresse e-mail:</label>
        <input type="text" id="email" name="email" value="${requestScope.email}" /><br>

        <input type="submit" value="Enregistrer les modifications" />
    </form>
       
       
       
       
       
       
       

     <h1>Modifier le profil</h1>
    <form action="/profile" method="post">
        <label for="np">Nom et prenom</label>
        <input type="text" id="np" name="np" value="${requestScope.nom_prenom}" /><br>

        <label for="nom">Nom utilisateur</label>
        <input type="text" id="nom" name="nom" value="${requestScope.nom_utilisateur}" /><br>

        <label for="email">Email</label>
        <input type="text" id="email" name="email" value="${requestScope.email}" /><br>

        <input type="submit" value="Enregistrer les modifications" />
    </form>-->
</body>
</html>