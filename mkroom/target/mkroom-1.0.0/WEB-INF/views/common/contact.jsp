<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>Master Key Room - Contact Us</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/skillhunt-master/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/skillhunt-master/css/animate.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/skillhunt-master/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/skillhunt-master/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/skillhunt-master/css/magnific-popup.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/skillhunt-master/css/aos.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/skillhunt-master/css/ionicons.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/skillhunt-master/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/skillhunt-master/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/skillhunt-master/css/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/skillhunt-master/css/icomoon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/skillhunt-master/css/style.css">
  </head>
  <body>
    
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container-fluid px-md-4	">
	      <a class="navbar-brand" href="${pageContext.request.contextPath}/">MasterKey Room</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="index.html" class="nav-link">Home</a></li>
	          <li class="nav-item"><a href="browsejobs.html" class="nav-link">Browse Jobs</a></li>
	          <li class="nav-item"><a href="candidates.html" class="nav-link">Canditates</a></li>
	          <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
	          <li class="nav-item active"><a href="contact.html" class="nav-link">Contact</a></li>
	          <li class="nav-item cta mr-md-1"><a href="new-post.html" class="nav-link">Post a Job</a></li>
	          <li class="nav-item cta cta-colored"><a href="job-post.html" class="nav-link">Want a Job</a></li>

	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    <div class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-start">
          <div class="col-md-12 ftco-animate text-center mb-5">
          	<p class="breadcrumbs mb-0"><span class="mr-3"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Contact</span></p>
            <h1 class="mb-3 bread">Contact us</h1>
          </div>
        </div>
      </div>
    </div>

		<section class="ftco-section contact-section bg-light">
      <div class="container">
        <div class="row d-flex mb-5 contact-info">
          <div class="col-md-12 mb-4">
            <h2 class="h3">Contact Information</h2>
          </div>
          <div class="w-100"></div>
          <div class="col-md-3">
            <p><span>Address:</span> 198 West 21th Street, Suite 721 New York NY 10016</p>
          </div>
          <div class="col-md-3">
            <p><span>Phone:</span> <a href="tel://1234567920">+ 1235 2355 98</a></p>
          </div>
          <div class="col-md-3">
            <p><span>Email:</span> <a href="mailto:info@yoursite.com">info@yoursite.com</a></p>
          </div>
          <div class="col-md-3">
            <p><span>Website</span> <a href="#">yoursite.com</a></p>
          </div>
        </div>
        <div class="row block-9">
          <div class="col-md-6 order-md-last d-flex">
            <form class="bg-white p-5 contact-form">
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Your Name" id="yourName" name="yourName">
              </div>
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Your Email" id="yourEmail" name="yourEmail">
              </div>
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Subject" id="yourSubject" name="yourSubject">
              </div>
              <div class="form-group">
                <textarea cols="30" rows="7" class="form-control" placeholder="Message" id="yourMessage" name="yourMessage"></textarea>
              </div>
              <div class="form-group">
                <button type="button" class="btn btn-primary py-3 px-5" id="btnSendEmail">Send Message</button>
              </div>
            </form>
          
          </div>

          <div class="col-md-6 d-flex">
          	<div id="map" class="bg-white"></div>
          </div>
        </div>
      </div>
    </section>

    <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
        	<div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Skillhunt Jobboard</h2>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Employers</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="pb-1 d-block">Browse Candidates</a></li>
                <li><a href="#" class="pb-1 d-block">Post a Job</a></li>
                <li><a href="#" class="pb-1 d-block">Employer Listing</a></li>
                <li><a href="#" class="pb-1 d-block">Resume Page</a></li>
                <li><a href="#" class="pb-1 d-block">Dashboard</a></li>
                <li><a href="#" class="pb-1 d-block">Job Packages</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">Candidate</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="pb-1 d-block">Browse Jobs</a></li>
                <li><a href="#" class="pb-1 d-block">Submit Resume</a></li>
                <li><a href="#" class="pb-1 d-block">Dashboard</a></li>
                <li><a href="#" class="pb-1 d-block">Browse Categories</a></li>
                <li><a href="#" class="pb-1 d-block">My Bookmarks</a></li>
                <li><a href="#" class="pb-1 d-block">Candidate Listing</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">Account</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="pb-1 d-block">My Account</a></li>
                <li><a href="#" class="pb-1 d-block">Sign In</a></li>
                <li><a href="#" class="pb-1 d-block">Create Account</a></li>
                <li><a href="#" class="pb-1 d-block">Checkout</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="${pageContext.request.contextPath}/resources/skillhunt-master/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/skillhunt-master/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/skillhunt-master/js/popper.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/skillhunt-master/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/skillhunt-master/js/jquery.easing.1.3.js"></script>
  <script src="${pageContext.request.contextPath}/resources/skillhunt-master/js/jquery.waypoints.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/skillhunt-master/js/jquery.stellar.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/skillhunt-master/js/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/skillhunt-master/js/jquery.magnific-popup.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/skillhunt-master/js/aos.js"></script>
  <script src="${pageContext.request.contextPath}/resources/skillhunt-master/js/jquery.animateNumber.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/skillhunt-master/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="${pageContext.request.contextPath}/resources/skillhunt-master/js/google-map.js"></script>
  <script src="${pageContext.request.contextPath}/resources/skillhunt-master/js/main.js"></script>

  <!-- send mail using Simple Mail Transfer Protocol which is a free JavaScript library  -->  
  <script src="https://smtpjs.com/v3/smtp.js"></script>
  <script>
    function sendEmail() {
      $.ajax({
        url: "${pageContext.request.contextPath}/sendEmail",
        method : "POST",
        data: JSON.stringify({
          name: $("#yourName").val(),
          email: $("#yourEmail").val(),
          subject: $("#yourSubject").val(),
          message: $("#yourMessage").val()
        }),
        contentType: "application/json",
        beforeSend : function(xhr){
          xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
        },
        success: function(result) {
          alert(result);
          window.location.href = window.location.href;
          
        },
        error : function(xhr, status) {
          alert(xhr.responseText);
        }
      });
    }
    $(document).ready(function() {
		
	    $("#btnSendEmail").click(function() {
          sendEmail();
      });
    });
  </script>


  </body>
</html>