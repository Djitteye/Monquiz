<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="ini.css">
</head>
<body>
<div class="container">
        <h1>Mot de passe oublié</h1>
        <p>Entrez votre adresse e-mail pour réinitialiser votre mot de passe.</p>
        <form action="oublier" method="POST">
            <label for="email">Adresse e-mail :</label>
            <input type="email" id="email" name="email" required>
            <input type="submit" value="Réinitialiser le mot de passe">
        </form>
    </div>

</body>
</html>