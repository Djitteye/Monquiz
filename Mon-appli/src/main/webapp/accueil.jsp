<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
<link rel="stylesheet" href="accueil.css">
<link rel="icon" type="image/x-icon" href="images/Favicon.png">
</head>
<body>








  <div class="container">

	<section id="sidebar">
		<a href="#" class="brand">
			<i><img src="images/Favicon.png" alt=""></i>
			<img src="images/QUIZ.png" alt="">
		</a>
		<ul class="side-menu top">
			<li class="active">
				<a href="accueil.jsp">
					<i class='bx bxs-dashboard' ></i>
					<span class="text">Tableau de bord</span>
				</a>
			</li>
			<li>
				<a href="mesquiz.jsp">
					<i class='bx bxs-message-dots' ></i>
					<span class="text">Mes Quiz</span>
				</a>
			</li>
			<li>
				<a href="resultat.jsp">
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

		

        		<!-- MAIN -->
		<main>
			<div class="head-title">
				<div class="left">
                    <div class="container-right-bas-header">
                        <div class="container-right-bas-header-box">
                            <div class="image"> 
                                <img src="images/imageHeader.png"  lightgray 50% / cover no-repeat alt="">
                            </div>
                            <div class="text">
                                <p>Vous cherchez à enrichir votre culture générale et à tester vos connaissances 
                                    tout en vous amusant? Que vous soyez passionné d'histoire, de design, d’anglais 
                                    ou de développement, nous avons le quiz parfait pour vous.
                                </p>
                            </div>
                        </div>
                    </div>
			</div>
			</div>
		</main>
		<!-- MAIN -->
		<div class="container-right">
			<div class="container-right-bas-main">
				<div class="container-right-bas-main-box-head">
					<div class="bas-right-box">
						<div class="bas-right-box-content">
							<h3><span class="creation-quiz">Culture generale</span></h3>
							<img src="images/image1.jpg" alt="">
							<div class="btn-bas-right-box">
								<a href="creer/creer-quiz.jsp">Créer un Quiz</a>
							</div>
						</div>
					</div>

					<div class="bas-right-box">
						<div class="bas-right-box-content">
							<h3>HTML & CSS</h3>
							<img src="images/image2.png" alt="">
							<p>
								<span class="gras">Catégorie: </span>Développement web/mobile
							</p>
							<p>
								<span class="gras">Auteur:</span>Fatoumata Diaby
							 </p>
							<div class="btn-bas-right-box-jouez">
								<a href="jouer/jouer1.jsp" class="btn-jouez">Jouez</a>
							</div>
						</div>
					</div>

					<div class="bas-right-box">
						<div class="bas-right-box-content">
							<h3>QUIZZ Design</h3>
							<img src="images/image3.png" alt="">
							<p>
								<span class="gras">Catégorie: </span> Développement web/mobile
							</p>
							<p>
								<span class="gras">Auteur:</span>Abdoulaye Djiteye
							</p>
							<div class="btn-bas-right-box-jouez">
								<a href="jouer/jouer2.jsp" class="btn-jouez">Jouez</a>
							</div>
						</div>
					</div>

					<div class="bas-right-box">
						<div class="bas-right-box-content">
							<h3>CMDR Doux</h3>
							<img src="images/image4.png" alt="">
							<p>
								<span class="gras">Catégorie:</span> Design UI/UX
							</p>
							<p>
								<span class="gras">Auteur:</span> Fanta Coulibaly
							</p>
							<div class="btn-bas-right-box-jouez">
								<a href="jouer/jouer3.jsp" class="btn-jouez">Jouez</a>
							</div>
						</div>
					</div>

					<div class="bas-right-box">
						<div class="bas-right-box-content">
							<h3>QUIZ Historique</h3>
							<img src="images/image5.png" alt="">
							<p>
								<span class="gras">Catégorie:</span> Histoire
							</p>
							<p>
								<span class="gras">Auteur:</span> Fanta Coulibaly
							</p>
							<div class="btn-bas-right-box-jouez">
								<a href="jouer/jouer4.jsp" class="btn-jouez">Jouez</a>
							</div>
						</div>
					</div>

					<div class="bas-right-box">
						<div class="bas-right-box-content">
							<h3>Base de donées</h3>
							<img src="images/image6.png" alt="">
							<p>
								<span class="gras">Catégorie:</span> Développement web/mobile
							</p>
							<p>
								<span class="gras">Auteur:</span> Abdoulaye Djitteye
							</p>
							<div class="btn-bas-right-box-jouez">
								<a href="jouer/jouer4.jsp" class="btn-jouez">Jouez</a>
							</div>
						</div>

						<div class="footer">
							<p>
								<span>Copyright © 2023 IKADEV. Par Le Groupe II</span>
							</p>
						</div>
				
					</div>
                </div>
        	</div>
        </section>

		
	</div>
        
    <script src="script.js"></script>











  <!--  
<div class="container">

        <div class="container-header">
            <img src="images/QUIZ.png" alt="">
            <div class="profile-complet">
                <div class="text">
             <c:if test="${!empty sessionScope.unom }">
<p>${sessionScope.unom }</p>
</c:if>
                </div>
                <div class="image-profile">
                    <a href="editProfile.jsp"><img src="images/img-profile.jpg" alt=""></a>
                    <i class='bx bxs-down-arrow fleche'></i>                 
                </div>
            </div>
        </div>

        <div class="container-left">
            <ul class="navlist">
                <li id="tableau-bord"><a href="accueil.html">Tableau de bord</a></li>
                <li><a href="#">Mes quizs</a></li>
                <li><a href="#">Résultats</a></li>
                <li><a href="#">Télécharger</a></li>
            </ul>
        </div>
        
        <div class="container-right">
                        <div class="container-right-bas-header">
                            <div class="container-right-bas-header-box">
                                <div class="image">
                                    <img src="images/imageHeader.png" alt="">
                                </div>
                                <div class="text">
                                    <p>Vous cherchez à enrichir votre culture générale et à tester vos connaissances 
                                        tout en vous amusant? Que vous soyez passionné d'histoire, de design, d’anglais 
                                        ou de développement, nous avons le quiz parfait pour vous.
                                    </p>
                                </div>
                            </div>
                        </div>
    
                        <div class="container-right-bas-main">
                            <div class="container-right-bas-main-box-head">
                                <div class="bas-right-box">
                                    <div class="bas-right-box-content">
                                        <h3><span class="creation-quiz">Culture generale</span></h3>
                                        <img src="images/image1.jpg" alt="">
                                        <div class="btn-bas-right-box">
                                            <a href="creer-quiz.html">Créer un Quiz</a>
                                        </div>
                                    </div>
                                </div>
            
                                <div class="bas-right-box">
                                    <div class="bas-right-box-content">
                                        <h3>HTML &amp; CSS</h3>
                                        <img src="images/image2.png" alt="">
                                        <p><span class="gras">Catégorie: </span>Développement web/mobile
                                           <span class="gras">Auteur:</span>Fatoumata Diaby
                                        </p>
                                        <div class="btn-bas-right-box-jouez">
                                            <a href="jouer1.html" class="btn-jouez">Jouez</a>
                                        </div>
                                    </div>
                                </div>
            
                                <div class="bas-right-box">
                                    <div class="bas-right-box-content">
                                        <h3>QUIZZ Design</h3>
                                        <img src="images/image3.png" alt="">
                                        <p><span class="gras">Catégorie: </span> Développement web/mobile
                                            <span class="gras">Auteur:</span>Fatoumata Diaby
                                        </p>
                                        <div class="btn-bas-right-box-jouez">
                                            <a href="jouer2.html" class="btn-jouez">Jouez</a>
                                        </div>
                                    </div>
                                </div>
            
                                <div class="bas-right-box">
                                    <div class="bas-right-box-content">
                                        <h3>CMDR Doux</h3>
                                        <img src="images/image4.png" alt="">
                                        <p><span class="gras">Catégorie:</span> Design UI/UX
                                            <span class="gras">Auteur:</span> Fanta Coulibaly
                                        </p>
                                        <div class="btn-bas-right-box-jouez">
                                            <a href="jouer3.html" class="btn-jouez">Jouez</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="container-right-bas-main-box-bas">
                                <div class="bas-right-box">
                                    <div class="bas-right-box-content">
                                        <h3>QUIZ Historique</h3>
                                        <img src="images/image5.png" alt="">
                                        <p><span class="gras">Catégorie:</span> Histoire
                                            <span class="gras">Auteur:</span> Fanta Coulibaly
                                        </p>
                                        <div class="btn-bas-right-box-jouez">
                                            <a href="jouer4.html" class="btn-jouez">Jouez</a>
                                        </div>
                                    </div>
                                </div>
            
                                <div class="bas-right-box">
                                    <div class="bas-right-box-content">
                                        <h3>Base de donées</h3>
                                        <img src="images/image6.png" alt="">
                                        <p><span class="gras">Catégorie:</span> Développement web/mobile
                                            <span class="gras">Auteur:</span> Abdoulaye Djitteye
                                        </p>
                                        <div class="btn-bas-right-box-jouez">
                                            <a href="jouer5.html" class="btn-jouez">Jouez</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <p>
                            <span>Copyright © 2023 IKADEV. Tout Droit Réservés. Par Le Groupe II</span>
                        </p>
        </div>  
    </div>-->
</body>
</html>