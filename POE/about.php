<?php

include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'header.php'; ?>

<div class="heading">
   <h3>about us</h3>
   <p> <a href="home.php">home</a> / about </p>
</div>

<section class="about">

   <div class="flex">

      <div class="image">
         <img src="images/openedBooks.jpg" alt="">
      </div>

      <div class="content">
         <h3>What you need to know</h3>
         <p>Established in 2020.Built for students for student who can’t afford to buy new textbooks and also save money by selling their old textbooks or buying new ones. PrelovedBooks democratise information and resources within education to make it more accessible and meaningful. We believe no student in South Africa should be denied their basic human right to a meaningful education simply because they cannot afford it. Our books are only sourced around the school campus ranging from good to excellent condition. This is your ticket to a bright future.</p>
      </div>

   </div>
   <div class="flex">

      <div class="image">
         <img src="images/girl_Library.jpg" alt="">
      </div>

      <div class="content">
         <h3>We're On A Mission To...</h3>
         <p> To provide students with high-quality, innovative items that are also affordable and deliver excellent service. Education is an essential tool that imparts knowledge to improve one’s life. We believe that education is free to all, so we built this application to make education accessible to all students on campus. We have created a network of suppliers around campus. We make it safer, easier and cheaper to buy and sell stuff within the university.</p>
      </div>

   </div>
   <div class="flex">

      <div class="image">
         <img src="images/studentStudying.jpg" alt="">
      </div>

      <div class="content">
         <h3>Our Vision of the future</h3>
         <p> Our goal is to be the most customer-focused organization in South Africa. We value simplicity over complexity. With a clever, searchable website, easy-to-follow instructions, clear and secure payment methods, and rapid, quality delivery, we strive to provide our consumers with the best online shopping experience from start to finish."Higher education is the first step in achieving success as a professional in any field. Knowledge is the foundation that allows you to stand on your own two feet. Your academic advancement determines your professional success, which effects your professional and career prospects.</p>
		 <a href="contact.php" class="btn">contact us</a>
      </div>

   </div>

</section>

<section class="reviews">

   <h1 class="title">What our customers say</h1>
   

   <div class="box-container">

      <div class="box">
         <img src="images/sema.jpg" alt="">
         <p>As always, I had good service from PreLovedBooks, in terms of ease of ordering, sturdy packaging, and prompt delivery..</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Watasema</h3>
      </div>

      <div class="box">
         <img src="images/kamo.jpg" alt="">
         <p>Easy to use and very fast delivery - love that I can support local bookshops too.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Kamogelo Mokgwatshwane</h3>
      </div>

      <div class="box">
         <img src="images/OIP.jpg" alt="">
         <p>Fast efficient service. Book exactly as described. Very happy</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Andre May</h3>
      </div>

      

   </div>

</section>

<section class="authors">

   <h1 class="title">Authors</h1>

   <div class="box-container">

      <div class="box">
         <img src="images/cynthia.jpg" alt="">
         <div class="share">
            <a href="#" class="fab fa-facebook-f"></a>
            <a href="#" class="fab fa-twitter"></a>
            <a href="#" class="fab fa-instagram"></a>
            <a href="#" class="fab fa-linkedin"></a>
         </div>
         <h3>Cynthia Mashabane</h3>
      </div>

      <div class="box">
         <img src="images/tumi.jpg" alt="">
         <div class="share">
            <a href="#" class="fab fa-facebook-f"></a>
            <a href="#" class="fab fa-twitter"></a>
            <a href="#" class="fab fa-instagram"></a>
            <a href="#" class="fab fa-linkedin"></a>
         </div>
         <h3>Tumelo Thuphayagae</h3>
      </div>

      

</section>







<?php include 'footer.php'; ?>

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>