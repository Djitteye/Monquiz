<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<!-- Boxicons -->
	<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="creer-quiz.css">
    <link rel="icon" type="image/x-icon" href="../images/Favicon.png">
</head>
<body>
<div class="container">

	<section id="sidebar">
		<a href="#" class="brand">
			<i><img src="../images/Favicon.png" alt=""></i>
			<img src="../images/QUIZ.png">
		</a>
		<ul class="side-menu top">
			<li class="active">
				<a href="../accueil.jsp">
					<i class='bx bxs-dashboard' ></i>
					<span class="text">Tableau de bord</span>
				</a>
			</li>
			<li>
				<a href="../mesquiz.jsp">
					<i class='bx bxs-message-dots' ></i>
					<span class="text">Mes Quiz</span>
				</a>
			</li>
			<li>
				<a href="../resultat.jsp">
					<i class='bx bxs-doughnut-chart' ></i>
					<span class="text">Résultat</span>
				</a>
			</li>
			<li>
				<a href="#">
					<i class='bx bxs-cloud-download' ></i>
					<span class="text">Télécharger</span>
				</a>
			</li>
		</ul>
	</section>

    <section id="content">
		<!-- NAVBAR -->
		<nav>
			<i class='bx bx-menu' ></i>
			
			<form action="#">
				<div class="form-input">
					<input type="search" placeholder="recherche...">
					<button type="submit" class="search-btn"><i class='bx bx-search' ></i></button>
				</div>
			</form>
			<input type="checkbox" id="switch-mode" hidden>
			<label for="switch-mode" class="switch-mode"></label>
			<a href="#" class="notification">
				<i class='bx bxs-bell' ></i>
				<span class="num">2</span>
			</a>
			 <ul class="profile-wrapper">
				<li>
					<!-- user profile -->
					
					<div class="profile">
						 <c:if test="${!empty sessionScope.unom }">
							<p>${sessionScope.unom }</p>
							</c:if>
						<!-- more menu -->
						<ul class="menu">

							<li><a href="#">Editer</a></li>
							<li><a href="#">Mon profile</a></li>
							<li><a href="#">Déconnexion</a></li>
						</ul>
					</div>
				</li>
			</ul>
            
		</nav>
		<!-- NAVBAR -->


       


		<div class="container-main">
            <div class="container-main-left">
                <div class="quizz-form">
                    <h2>Edition du Quizz</h2>
                    <form action="#" method="post">
                        <div class="form-group">
                            <label for="quizz-title">Titre du Quizz :</label>
                            <input type="text" id="quizz-title" name="quizz-title" required>
                        </div>

						<script src="https://www.dukelearntoprogram.com/course1/common/js/image/SimpleImage.js">
						</script>
						<h3>Télécharger et afficher l'image</h3>
						<canvas id= "canv1" ></canvas>
						
						<p>
						Nomdu Fichier:
						<input type="file" multiple="false" accept="image/*" id=finput onchange="upload()">
						</p>
                        <div class="form-group">
                            <label for="quizz-description">Description :</label>
                            <input type="text" id="quizz-description" name="quizz-description" required>
                        </div>
                        <div class="form-group">
                            <label for="quizz-category">Catégories :</label>
                            <select id="quizz-category" name="quizz-category">
                                <option value="HTML & CSS">Développement Web/Mobile</option>
                                <option value="QUIZZ Design">Design UX/UI</option>
                                <option value="MDR Doux">Anglais</option>
                                <option value="QUIZ Historique">Histoire</option>
                                <option value="Base de données">Base de données</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn-next">
                                <a href="#">Étape suivante </a><i class='bx bx-chevron-right'></i></i>
                            </button>                
                        </div>
                    </form>
                </div>
            </div>
            <div class="container-main-right">
                <img src="../images/ordinateur.png" alt="">
            </div>
           
        </div>
			<p>
				<span class="footer">Copyright © 2023 IKADEV. Tout Droit Réservés. Par Le Groupe II</span>
			</p>
		</div>

        </section>
		
        </div>
    </div>
    

    <script src="menu.js"></script>

</body>
</html>