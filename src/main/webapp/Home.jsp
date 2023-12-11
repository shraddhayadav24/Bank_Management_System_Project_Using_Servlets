<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bank</title>
<style>
#navbar{
   width: 100%;
   height: 70px;
   background-color: #404040;
   color:white;
   display: flex;
   box-sizing: boder-box;
}

*{
    margin: 0;
    padding: 0;
    background-size: cover;
  	background-position: center;
  	background-attachment: fixed;
}

a {
	color:white;
    padding: 5px 20px;
    text-decoration: none;
}

#logo{
    width: 30%;
    height:70px;
    background-color: #404040;
    color: white;
    display: flex;
}

#name{
    width: 30%;
    height: 70px;
    background-color: #404040;
    color:white;
    font-size: 50px;
    font-family: 'Franklin Gothic Medium';
    display: flex;
}

#content{
    color: white;
    width: 50%;
    height: 70px;
    background-color: #404040;
    display: flex;
    justify-content: space-around;
    align-items: center;
}
.button {
  		
  		font-size: 24px;
  		text-align: center;
  		cursor: pointer;
  		outline: none;
  		color: #fff;
  		background-color: #04AA6D;
  		border: none;
  		border-radius: 15px;
  		box-shadow: 0 9px rgb ;
	}

.button:hover {background-color: #3e8e41}

	.button:active {
  		background-color: #3e8e41;
  		box-shadow: 0 5px #666;
  		transform: translateY(4px);
	}

#footer {
	width:97.4%;
	height:81px;
    background-color: #404040;
    color: #fff;
    padding: 20px;
    text-align: center;
     
}

.slideshow-container {
    position: relative;
    max-width: 100%;
    overflow: hidden;
  }

  .mySlides {
    display: none;
  }

  .fade {
    animation-name: fade;
    animation-duration: 3s; 
  }

  @keyframes fade {
    0% {
      opacity: 1;
    }
    20% {
      opacity: 1;
    }
    80% {
      opacity: 1;
    }
    100% {
      opacity: 0.1;
    }
  }


</style>
</head>
<body>
	<form action="Home" method="post">
		<div id="navbar">
		<div id="logo">
			<img src="logo.png" alt="logo">
		</div>
		<div id="name">BOB Bank</div>
			<div id="content">
				<a href="adminlogin.jsp"> Admin Login</a> 
				<a href="ManagerLogin.jsp">Manager Login</a> 
				<a href="customerlogin.jsp">Customer Login</a> 
				<a href="customerregister.jsp" style="text-decoration: none;">
			<div class="button" style="width: 150px; height: 40px; font-size: 15px;
					 background-color: blue; color: white; text-align: center; line-height: 40px; 
					 cursor: pointer;">Create Account</div></a>
			</div>
			
		</div>
		
 	<div class="slideshow-container">
		<div class="mySlides fade">
			<img src="welcome to Bank (3).png" style="width:100%" >  
		</div>
			<div class="mySlides fade">
  			<img src="welcome to Bank (4).png" style="width:100%">	
		</div>
		<div class="mySlides fade">
 			<img src="welcome to Bank (5).png" style="width:100%">
		</div> 
	</div>

<script>
  var slideIndex = 0;

  function startSlideshow() {
    var slides = document.getElementsByClassName("mySlides");
    for (var i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
    }

    slideIndex++;
    if (slideIndex > slides.length) {
      slideIndex = 1;
    }

    slides[slideIndex - 1].style.display = "block";
    setTimeout(startSlideshow, 2000); 
  }

  window.onload = startSlideshow;
</script>

</form>
<footer>
    <div id="footer">
        <p>&copy; 2023 BOB Bank</p>
        <div id="social-media">
            <a href="https://facebook.com" class="social-link">Facebook</a>
            <a href="https://twitter.com" class="social-link">Twitter</a>
            <a href="https://instagram.com" class="social-link">Instagram</a>
        </div>
    </div>
</footer>

</body>
</html>