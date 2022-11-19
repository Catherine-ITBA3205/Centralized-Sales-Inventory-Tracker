<?php require('session.php');?>
<?php if(logged_in()){ ?>
          <script type="text/javascript">
            window.location = "index.php";
          </script>
    <?php
    } ?>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Ann's Home Sales And Inventory System</title>
  <link rel="icon" href="logo.png">


  <!-- Custom fonts for this template-->
  <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="../css/sb-admin-2.min.css" rel="stylesheet">
<style>
  .bg-side {
    background-color: hsl(168, 57%, 26%);
      background-image: radial-gradient(650px circle at 0% 0%,
          hsl(168, 41%, 40%) 15%,
          hsl(168, 41%, 30%) 168%,
          hsl(168, 41%, 20%) 75%,
          hsl(168, 41%, 19%) 80%,
          transparent 100%),
        radial-gradient(1250px circle at 100% 100%,
          hsl(168, 41%, 45%) 15%,
          hsl(168, 41%, 30%) 168%,
          hsl(168, 41%, 20%) 75%,
          hsl(168, 41%, 19%) 80%,
          transparent 100%);
    }
    #radius-shape-1 {
      height: 220px;
      width: 220px;
      top: -60px;
      left: -130px;
      background: radial-gradient(#C3FF99, #1C6758);
      overflow: hidden;
    }

    #radius-shape-2 {
      border-radius: 38% 62% 63% 37% / 70% 33% 67% 30%;
      bottom: -60px;
      right: -110px;
      width: 300px;
      height: 300px;
      background: radial-gradient(#C3FF99, #1C6758);
      overflow: hidden;
    }

    .bg-glass {
      background-color: hsla(0, 0%, 100%, 0.9) !important;
      backdrop-filter: saturate(200%) blur(25px);
    }
/* Style the links inside the navigation bar */
nav {
	padding-top: 5px;
	padding-bottom: 5px;
	top: 0;
	position: fixed;
	display: flex;
	width: 100%;
	z-index: 1000;
  background: #1C6758 ;
	justify-content: space-around;
	transition: 1.5s;
	align-items: center;
}

a, button {
	float: left;
	font-family: "Montserrat", sans-serif;
	font-weight: 500;
	font-size: 15px;
	color: #2E3D49;
	display: block;
	text-decoration: none;
	text-align: center;
  cursor: pointer;
}

#about_section, #team_section, #contactus_section, #location_section {
	font-family: 'Open Sans', sans-serif;
	color: #2E3D49;
	position: relative;
}
.diffSection {
	width: 100%;
	/*position: relative;*/
	justify-content: center;
	align-items: center;
}
.diffSection .content {
	margin: 10px;
	text-align: center;
	padding: 10px 100px;
	font-size: 1.1em;
}

/* TEAM */

.card-wrapper{
  height: 500px;
  width: 300px;
  perspective: 150rem;
  box-shadow: none;
  margin: 2rem;
}

.content{
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.8s;
  transform-style: preserve-3d;
  padding: 2rem;
}

.card-wrapper:hover .face-front{
  transform: rotateY(180deg);
  transition: 1s;
}
.card-wrapper:hover .face-back{
  transform: rotateY(0deg);
  transition: 1s;
} 

.face-front{
  background-color: #0093E9;
  background-image: linear-gradient(160deg, #0093E9 0%, #80D0C7 100%);
}

.face-front, .face-back{
  position: absolute;
  width: 100%;
  height: 100%;
  background-color: #fff;
  color: black;
  backface-visibility: hidden;
}

.face-back{
  transform: rotateY(-180deg);
  background-color: #4158D0;
  background-image: linear-gradient(43deg, #4158D0 0%,#C850C0 16%, #FFCC70 80%);
  
}

/**location **/

/**CONTACT**/
</style>
</head>

<body class="bg-side">

<!--NAVIGATION BAR-->
<header id="header">
		<nav>
			<div class="top-nav"><img src="logo.png" height="80" width="80" alt="logo"></div>
				<a class="text-white text-lg font-weight-bold" href="">Home</a>
				<a href="#about_section" class="text-white text-lg font-weight-bold">About</a>
				<a href="#team_section" class="text-white text-lg font-weight-bold">Team</a>
				<a href="#location_section" class="text-white text-lg font-weight-bold">Location</a>
        <a href="#contactus_section" class="text-white text-lg font-weight-bold">Contact</a>
		</nav>

<div class="container px-4 py-5 px-md-10 text-center text-lg-start my-5">
    <div class="row gx-lg-5 align-items-center mb-5">
      <div class="col-lg-7 mb-5 mb-lg-0" style="z-index: 10">
        <h1 class="my-5 display-5 fw-bold ls-tight" style="color: hsl(218, 81%, 95%)">
          Welcome to <br />
          <span style="color: hsl(218, 81%, 75%)">Ann's Home Sales & Inventory System</span>
        </h1>
        <p class="mb-4 text-white">
        It is a web-based platform that will provide a centralized database, 
        that  allows you to generate reports automatically, provide a point of sales system,
        and recommend what specific product you should produce in a peak season. 
        This will be able to track sales and available inventory, tell a shopkeeper whenever 
        it's time to replace or how much to consider purchasing, and completely remove paper work,
        human errors, and manual delays.
        </p>
      </div>

      <div class="col-lg-4 mb-5 mb-lg-0 position-relative">
        <div id="radius-shape-1" class="position-absolute rounded-circle shadow-2-strong"></div>
        <div id="radius-shape-2" class="position-absolute shadow-2-strong"></div>

        <div class="card bg-glass">
          <div class="card-body px-4 py-5 px-md-5">

                  <form class="user" role="form" action="processlogin.php" method="post">
                    <div class="form-group">
                        <label class="form-group text-left font-weight-bold" for="user">Username:
                        <input class="form-control form-control-user" placeholder="Username" name="user" type="text" id="user" autofocus>
                    </div>
                    <div class="form-group">
                    <label class="form-group text-left font-weight-bold" for="pass">Password:
                        <input class="form-control form-control-user" placeholder="Password" name="password" type="password" value="" id="pass">
                    </div>
                    <div class="form-group">
                      <div class="custom-control custom-checkbox small">
                        <input type="checkbox" class="custom-control-input" id="customCheck">
                        <label class="custom-control-label" for="customCheck">Remember Me</label>
                      </div>
                    </div>
                    <button class="btn btn-success btn-user btn-block" type="submit" name="btnlogin">Login</button>
                    <hr>
                    <!--a href="#!" class="small text-muted">Terms of use.</a-->
                </form>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>

 <!-- ABOUT -->
      
		<center><p class="text-white" id="about_section" style="font-size: 50px;">About</p>      
    <div id="carouselExampleControls" class="carousel slide" style="width: 50rem;" data-ride="carousel">
        <div class="carousel-inner">
          <div class="row">

        <div class="carousel-item active">
            <img class="d-block" style="width:40rem;" src="img/cakes.jpg" alt="First slide">
          </div>
          <div class="carousel-item">
            <img class="d-block" style="width:40rem;" src="img/cream-puffs.jpg" alt="Second slide">
          </div>
          <div class="carousel-item">
            <img class="d-block" style="width:40rem;" src="img/ube-cheesecake.jpg" alt="Third slide">
          </div>
          <div class="carousel-item">
            <img class="d-block" style="width:40rem;" src="img/mango-strawberry.png" alt="Fourth slide">
          </div>

        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
      </div>
      <p class="font-italic text-white mx-5 px-4 py-5">
      Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, error amet numquam iure provident voluptate
                esse quasi, veritatis totam voluptas nostrum quisquam eum porro a pariatur accusamus veniam. Quia, minima?
        </center>


        <!-- TEAM -->
        <center><p class="text-white" id="team_section" style="font-size: 50px;">OUR TEAM</p> </center>
          <div class="container mt-2">
            <div class="row">

                      <!--Cath-->
                      <div class="col-md-3 m-4">
                        <div class="card-wrapper">
                          <div class="content">

                            <div class="face-front z-depth-2">
                              <img src="img/cath.jpg" class="rounded-circle m-4" width="150px;" height="150px;">

                              <div class="card-body">
                                <h4 class="font-weight-bold font-italic">Catherine D. Beredo</h4>
                                <hr>
                                <p class="font-weigt-bold" style="color: hsl(237, 100%, 32%)">Web Developer</p>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, error amet numquam iure provident voluptate
                esse quasi, veritatis totam voluptas nostrum quisquam eum porro a pariatur accusamus veniam. Quia, minima?</p>
                              </div>
                            </div>

                              <div class="face-back z-depth-2">
                                <div class="card-body">
                                  <h4 class="font-weight-bold">About Me</h4>
                                  <hr>
                                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, error amet numquam iure provident voluptate
                esse quasi, veritatis totam voluptas nostrum quisquam eum porro a pariatur accusamus veniam. Quia, minima?.</p>
                                  <hr>

                                  <ul class="list-inline">
                                  <li class="list-inline-item"><a href="https://www.facebook.com/catherine.beredo.1/" class="btn btn-fb px-4"><i class="fab fa-facebook-f text-dark"></i></a></li>
                                  <li class="list-inline-item"><a href="https://github.com/Catherine-ITBA3205" class="btn btn-gh px-4"><i class="fab fa-github text-dark"> </i></a></li>
                                  <li class="list-inline-item"><a href="https://www.linkedin.com/in/catherine-beredo-659892239/" class="btn btn-li px-4"><i class="fab fa-linkedin-in text-dark"> </i></a></li>
                                  </ul>
                                </div>
                              </div>
                          </div>
                        </div>
                    </div>

                        <!--Roxanne-->
                        <div class="col-md-3 m-4">
                        <div class="card-wrapper">
                          <div class="content">

                            <div class="face-front z-depth-2">
                              <img src="img/rox.jpg" class="rounded-circle m-4" width="150px;" height="150px;">

                              <div class="card-body">
                                <h4 class="font-weight-bold font-italic">Roxanne D. Papasin</h4>
                                <hr>
                                <p class="font-weigt-bold" style="color: hsl(237, 100%, 32%)">Web Developer</p>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, error amet numquam iure provident voluptate
                esse quasi, veritatis totam voluptas nostrum quisquam eum porro a pariatur accusamus veniam. Quia, minima?.</p>
                              </div>
                            </div>

                              <div class="face-back z-depth-2">
                                <div class="card-body">
                                  <h4 class="font-weight-bold">About Me</h4>
                                  <hr>
                                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, error amet numquam iure provident voluptate
                esse quasi, veritatis totam voluptas nostrum quisquam eum porro a pariatur accusamus veniam. Quia, minima?.</p>
                                  <hr>

                                  <ul class="list-inline">
                                  <li class="list-inline-item"><a href="https://www.facebook.com/roxanne.leise.3" class="btn btn-fb px-4"><i class="fab fa-facebook-f text-dark"> </i></a></li>
                                  <li class="list-inline-item"><a href="https://github.com/roxanneleise" class="btn btn-gh px-4"><i class="fab fa-github text-dark"> </i></a></li>
                                  <li class="list-inline-item"><a href="https://ph.linkedin.com/in/roxanne-leise-papasin-238451235" class="btn btn-li px-4"><i class="fab fa-linkedin-in text-dark"> </i></a></li>
                                  </ul>
                                </div>
                              </div>
                          </div>
                        </div>
                    </div>

                        <!--Angela-->
                        <div class="col-md-3 m-4">
                        <div class="card-wrapper">
                          <div class="content">

                            <div class="face-front z-depth-2">
                              <img src="img/angela.jpg" class="rounded-circle m-4" width="150px;" height="150px;">

                              <div class="card-body">
                                <h4 class="font-weight-bold font-italic">Angela O. Verano</h4>
                                <hr>
                                <p class="font-weigt-bold" style="color: hsl(237, 100%, 32%)">Web Developer</p>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, error amet numquam iure provident voluptate
                esse quasi, veritatis totam voluptas nostrum quisquam eum porro a pariatur accusamus veniam. Quia, minima?.</p>
                              </div>
                            </div>

                              <div class="face-back z-depth-2">
                                <div class="card-body">
                                  <h4 class="font-weight-bold">About Me</h4>
                                  <hr>
                                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, error amet numquam iure provident voluptate
                esse quasi, veritatis totam voluptas nostrum quisquam eum porro a pariatur accusamus veniam. Quia, minima?.</p>
                                  <hr>

                                  <ul class="list-inline">
                                  <li class="list-inline-item"><a href="https://www.facebook.com/AngelaaVerano1993?mibextid=ZbWKwL" class="btn btn-fb px-4"><i class="fab fa-facebook-f text-dark"> </i></a></li>
                                  <li class="list-inline-item"><a href="https://github.com/Angela-ITBA3205 " class="btn btn-gh px-4"><i class="fab fa-github text-dark"> </i></a></li>
                                  <li class="list-inline-item"><a href="https://www.linkedin.com/in/angela-verano-a560a5255" class="btn btn-li px-4"><i class="fab fa-linkedin-in text-dark"> </i></a></li>
                                  </ul>
                                </div>
                              </div>
                          </div>
                        </div>

                      </div>  
              </div>

              
              <!--LOCATION-->
              <center><p class="text-white" id="location_section" style="font-size: 50px;">LOCATION</p> </center>
              <section class="pt-5 pb-5">
    <div class="container">
        <div class="row">
           
            <div class="col-6">
                <a class="btn btn-success mb-3 mr-1" href="#carouselExampleIndicators2" role="button" data-slide="prev">
                    <i class="fa fa-arrow-left"></i>
                </a>
                <a class="btn btn-success mb-3 " href="#carouselExampleIndicators2" role="button" data-slide="next">
                    <i class="fa fa-arrow-right"></i>
                </a>
            </div>
            <div class="col-12">
                <div id="carouselExampleIndicators2" class="carousel slide" data-ride="carousel">

                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="row">

                                <div class="col-md-4 mb-3">
                                    <div class="card">
                                        <img class="img-fluid" height="100px;" width="1000px;" src="img/main-store.jpg">
                                        <div class="card-body">
                                            <h4 class="card-title font-weight-bold">Ann's Home Main Branch</h4><hr>
                                            <ul class="card-text" style="list-style: none;">
                                              <li><i class="fa fa-map"></i>
                                              Lourdes Village, Bolbok, Batangas City</li>
                                              <li><i class="fa fa-clock"></i>
                                              Opens 8AM to 5PM</li>
                                              <li><i class="fa fa-phone"></i>
                                              (043) 980 7635</li>
                                            
                                            </ul>

                                        </div>

                                    </div>
                                </div>

                                <div class="col-md-4 mb-3">
                                    <div class="card">
                                        <img class="img-fluid" height="100px;" width="1000px;" src="img/PBurgos.jpg">
                                        <div class="card-body">
                                        <h4 class="card-title font-weight-bold">Ann's Home P.Burgos</h4><hr>
                                            <ul class="card-text" style="list-style: none;">
                                              <li><i class="fa fa-map"></i>
                                              P. Burgos, Poblacion, Batangas</li>
                                              <li><i class="fa fa-clock"></i>
                                              Opens 9AM to 7PM</li>
                                              <li><i class="fa fa-phone"></i>
                                              (043) 984 6907</li>
                                            
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <div class="card">
                                    <img class="img-fluid" height="100px;" width="1000px;" src="img/sm.jpg">
                                        <div class="card-body">
                                        <h4 class="card-title font-weight-bold">Ann's Home SM Batangas</h4><hr>
                                            <ul class="card-text" style="list-style: none;">
                                              <li><i class="fa fa-map"></i>
                                              1F SM Batangas, Pallocan West, Batangas City</li>
                                              <li><i class="fa fa-clock"></i>
                                              Opens 9AM to 7PM</li>
                                              <li><i class="fa fa-phone"></i>
                                              (043) 984 6907</li>
                                            
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="row">

                                <div class="col-md-4 mb-3">
                                    <div class="card">
                                    <img class="img-fluid" height="100px;" width="1000px;" src="img/kumintang.jpg">
                                        <div class="card-body">
                                        <h4 class="card-title font-weight-bold">Ann's Home Bauan</h4><hr>
                                            <ul class="card-text" style="list-style: none;">
                                              <li><i class="fa fa-map"></i>
                                              Q3F8+HCV, National Road, Batangas, 4200 Batangas</li>
                                              <li><i class="fa fa-clock"></i>
                                              Opens 9AM to 7PM</li>
                                              <li><i class="fa fa-phone"></i>
                                              (043) 980 7635</li>
                                            
                                            </ul>
                                        </div>

                                    </div>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <div class="card">
                                    <img class="img-fluid" height="100px;" width="1000px;" src="img/bauan.jpg">
                                        <div class="card-body">
                                        <h4 class="card-title font-weight-bold">Ann's Home Kumintang</h4><hr>
                                            <ul class="card-text" style="list-style: none;">
                                              <li><i class="fa fa-map"></i>
                                              San Diego St., Bauan, Batangas</li>
                                              <li><i class="fa fa-clock"></i>
                                              Opens 8AM to 5PM</li>
                                              <li><i class="fa fa-phone"></i>
                                              (043) 984 6907</li>
                                            
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section><hr>



              <!--CONTACT-->
              <p class="text-white font-weight-bold" id="contact_section" style="font-size: 20px;">CONTACT US</p>
              <ul class="text-white" style="list-style: none;">
                 <li><i class="fa fa-map"></i>
                 Barangay Bolbok, Batangas City, Philippines</li>
                   <li><i class="fa fa-phone"></i>
                   (043) 980 7635</li>
                   <li><i class="fa fa-envelope"></i>
                   apiencenaves@yahoo.com</li>
                    </ul>
                  <ul class="list-inline text-white" style="list-style: none;">
                   <li class="list-inline-item"><a class="btn btn-fb px-2" href="https://www.facebook.com/annshomebatangascity"><i class="fab fa-facebook-f fa-lg text-white "></i></a>
                   </li>
                   <li class="list-inline-item"><a class="btn btn-ms px-2" href="https://www.facebook.com/messages/t/600101553403179"><i class="fab fa-facebook-messenger fa-lg text-white "></i></a>
                   </li>
                   <li class="list-inline-item"><a class="btn btn-mp px-2" href="https://www.google.com/maps/dir/13.7854976,121.0744832/13.775493,121.04519/@13.7801408,121.0423111,14z/data=!3m1!4b1!4m4!4m3!1m1!4e1!1m0"><i class="fa fa-globe fa-lg text-white "></i></a>
                   </li>

                   <li class="list-line-item"> <a class="px-1 text-white" href=""> Terms of use.</a>
                   </li>
                   <li class="list-line-item"> <a class="px-1 text-white" href=""> Privacy policy.</a>
                   </li>
                   <li class="list-line-item text-white px-1"> All Rights Reserved © Centralized Sales & Inventory Tracker.</a>
                   </li>
                    </ul>

                    


                    
  <!-- Bootstrap core JavaScript-->
  <script src="../vendor/jquery/jquery.min.js"></script>
  <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="../js/sb-admin-2.min.js"></script>

</body>

</html>
