<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="global.css">
    <link rel="stylesheet" href="appointment.css">
    <link rel="stylesheet" href="bill.html">
</head>
<body>
    <div class="navbar">
        <nav>
          <a href="hairHtml.html">eSalon</a>
          <a class="home" href="hairHtml.html">Home</a>
          <div class="dropdown">
            <button class="dropbtn">
              Styles
              <!--<i class="fa-solid fa-chevron-down"></i> <i class="fa-solid fa-chevron-up"></i>!-->
            </button>
  
            <div class="dropdown-content">
              <a href="women.html">Women</a>
              <a href="menHtml.html">Men</a>
            </div>
          </div>
          <a href="contactHtml.html">Contact</a>
          <a class="appointment" href="appointment.html">Appointment</a>
        </nav>
    </div> 

  
        <div class="appointmentform">
          <?php
             if(isset($_SESSION['status']))
             {
              echo "<h4>".$_SESSION['status']."</h4>";
              unset($_SESSION['status']);
             }
             ?>

          
          <form id="appointmentForm"  action="save.php" method="POST">
            <h1>Appointment Booking</h1>
            <label for="name">Name:</label>
            <input type="text" class="inputfield" id="name" name="Name"  placeholder="Enter Your Full Name" required><br><br>
            <label for="service" id="ser">Select Service:</label>
            <select id="service" name="Service" class="selectser">
                <option value="Select Service">Select Service</option>
                <option value="haircut">Haircut ($20)</option>
                <option value="color">Hair Color ($30)</option>
                <option value="shave">Shave ($50)</option>
            </select><br><br>
            <label for="date">Date & Time:</label>
            <input type="datetime-local" id="date" placeholder="Date and Time" class="inputfield" name="DateTime" required><br><br>
            <!-- <label for="time">Time:</label>
            <input type="time" id="time" placeholder="Time" class="inputfield" name="Time" required><br><br>
            <input type="submit" id="booking" value="Book Appointment "> -->
            <button type="submit" id="booking" name="submit">Book Appointment</button>
           
          </form>
          
        </div>
      
        <script src="script.js"></script>

    




    <!-- <script>
      document.getElementById("appointmentForm").addEventListener("submit", function (event) {
          event.preventDefault();

          const name = document.getElementById("name").value;
          const service = document.getElementById("service").value;
          const date = document.getElementById("date").value;
          const time = document.getElementById("time").value;

          let price = 0;
          switch (service) {
              case "haircut":
                  price = 30;
                  break;
              case "color":
                  price = 50;
                  break;
              case "shave":
                  price = 20;
                  break;
          }

         
          window.location.href = `confirmation.html?service=${service}&date=${date}&time=${time}&totalBill=${totalBill}`;
      });
  </script> -->
</body>
</html>