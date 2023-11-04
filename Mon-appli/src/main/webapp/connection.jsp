<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
        <div class="card">
            <div class="inner-box" id="card">
            
            <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
                <div class="card-front">
                    <h2>CONNEXION</h2>
                    <form method="post" action="connecter">
                        <input type="text" name="nom"class="input-box" placeholder="Nom utilisateur" required>
                        <input type="password" name="mpasse"class="input-box" placeholder="Mot de passe" required>
                        <button type="submit" class="submit-btn">CONTINUER</button>
                        <input type="checkbox"><span>Se souvenir de moi</span>
                    </form>
                    <button type="button" class="btn" onclick="openRegister()">Je suis nouveau Ici</button>
                    <a href="ini.jsp">mot de passe oublie?</a>
                </div>
                
                <link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script type="text/javascript">
	var status = document.getElementById("status").value;
	if (status== "success"){
		swal("Felicitations","votre compte a ete creer avec succes","success");
	}
	</script>
                <!-- fin connection -->
                
                
                <!-- debut inscription -->
                <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
>
                <div class="card-back">
                    <h2>INSCRIPTION</h2>
                    <form method="post" action="s'inscrir">
                    	<input type="text" name="np" class="input-box" placeholder="Nom et prenom" required>
                        <input type="text" name="nom" class="input-box" placeholder="Nom utilisateur" required>
                        <input type="email" name="email" class="input-box" placeholder="Email" required>
                        <input type="password" name="mpasse" class="input-box" placeholder="Mot de passe" required>
                        <button type="submit" name="enregister" class="submit-btn">ENREGISTRER</button>
                    </form>
                    <button type="button" class="btn" onclick="openLogin()">J'ai un compte</button>
                     
                </div>
            </div>
        </div>
    </div>
    <script>
        const card = document.getElementById("card");

        function openRegister() {
            card.style.transform = "rotateY(-180deg";
        }
        function openLogin() {
        	card.style.transform = "rotateY(0deg";
        }

    </script>
    
    <!-- js pour l'inscription -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script type="text/javascript">
	var status = document.getElementById("status").value;
	if (status== "success"){
		swal("Felicitations","votre compte a ete creer avec succes","success");
	}
	</script>
	
	
	<!-- js pour la connection -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
	<script type="text/javascript">
	var status = document.getElementById("status").value;
	if (status== "failed"){
		swal("Accès refusé","Nom d'utilisateur ou mot de passe incorrecte","failed");
	}
	</script>
  

</body>
</html>