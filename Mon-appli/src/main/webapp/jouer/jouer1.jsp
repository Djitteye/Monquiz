<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<!-- Boxicons -->
	<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
	    <!-- FontAweome CDN Link for Icons -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <link rel="stylesheet" href="jouer1-style.css">
    <link rel="stylesheet" href="jouer1.css">
    <link rel="icon" type="image/x-icon" href="images/Favicon.png">
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
				<a href="../Resultat/resultat.html">
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
								<img src="../images/imageHeader.png"  lightgray 50% / cover no-repeat; alt="">
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
			<!-- <div class="container-right-bas-main"> -->
				<!-- <div class="container-right-bas-main-box-head"> -->
					<div class="content item">
						    <!-- start Quiz button -->
						<div class="start_btn"><button>Démarrer le Quiz</button></div>

						<!-- Info Box -->
						<div class="info_box">
							<div class="info-title"><span>Quelques règles de ce quiz</span></div>
							<div class="info-list">
								<div class="info">1. Vous aurez seulement <span>15 secondes</span> par question.</div>
								<div class="info">2. Une fois que vous avez choisi votre réponse, elle ne peut pas être annulée.</div>
								<div class="info">3. Vous ne pouvez pas sélectionner une option une fois que le temps est écoulé.</div>
								<div class="info">4. Vous ne pouvez pas quitter le quiz pendant que vous jouez.</div>
								<div class="info">5. Vous obtiendrez des points en fonction de vos réponses correctes.</div>
							</div>
							<div class="buttons">
								<button class="quit">Quitter le Quiz</button>
								<button class="restart">Continuer</button>
							</div>
						</div>

						<!-- Quiz Box -->
						<div class="quiz_box">
							<header>
								<div class="title">HTML & CSS</div>
								<div class="timer">
									<div class="time_left_txt">Temps Restant</div>
									<div class="timer_sec">15</div>
								</div>
								<div class="time_line"></div>
							</header>
							<section>
								<div class="que_text">
									<!-- Here I've inserted question from JavaScript -->
								</div>
								<div class="option_list">
									<!-- Here I've inserted options from JavaScript -->
								</div>
							</section>

							<!-- footer of Quiz Box -->
							<footer>
								<div class="total_que">
									<!-- Here I've inserted Question Count Number from JavaScript -->
								</div>
								<button class="next_btn">Question suivante</button>
							</footer>
						</div>

						<!-- Result Box -->
						<div class="result_box">
							<div class="icon">
								<i class="fas fa-crown"></i>
							</div>
							<div class="complete_text">Vous avez terminé le Quiz !</div>
							<div class="score_text">
								<!-- Here I've inserted Score Result from JavaScript -->
							</div>
							<div class="buttons">
								<button class="restart">Rejouer au Quiz</button>
								<button class="quit">Quitter le Quiz</button>
							</div>
						</div>
					</div>
				<!-- </div> -->
		</div>
    </section>
    
    <script src="menu.js"></script>
	<script src="jouer1.js"></script>
	<script src="jouer1-b.js"></script>
</body>
</html>