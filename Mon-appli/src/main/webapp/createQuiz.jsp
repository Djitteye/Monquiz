<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
   <h1>Créer un Quiz - Étape 1</h1>
    <form action="CreateQuizServlet" method="post">
        <label for="quizName">Nom du Quiz :</label>
        <input type="text" id="quizName" name="quizName" required>
        <br>
        <label for="quizDescription">Description du Quiz :</label>
        <textarea id="quizDescription" name="quizDescription" rows="4" cols="50" required></textarea>
        <br>
        <label for="quizCategory">Catégorie du Quiz :</label>
        <input type="text" id="quizCategory" name="quizCategory" required>
        <br>
        <input type="submit" value="Créer le quiz">
    </form>

</body>
</html>