<?php
session_start();
$con = mysqli_connect("localhost","root","","appointment");


if(isset($_POST['submit']))
{
    $Name = $_POST['Name'];
    $Service = $_POST['Service'];
    $DateTime = $_POST['DateTime']; 

    $query = "INSERT INTO appointment_data (Name,Service,Date) VALUES('$Name',' $Service','$DateTime')";
    $query_run = mysqli_query($con, $query);

    if($query_run)
    {
        $_SESSION['status'] = "Data inserted";
        header("location: appointment.html");
    }
    else
    {
        $_SESSION['status'] = "Data not inserted";
        header("location: appointment.php");
    }

}
// $Name = $_POST['Name'];
// $Service = $_POST['Service'];
// $Date = $_POST['Date'];
// $Time = $_POST['Time'];

$server = "localhost";
$username = "root";
$password = "";
$dbname = "appointment";
$con = mysqli_connect($server,$username,$password,$dbname);

if ($conn->connect_error) {
    die('Connection Failed : '.$conn->connect_error);
} else {
    $stmt = $conn->prepare("INSERT INTO appointment_data(Name,Service,Date,Time) VALUES(?,?,?,?)");
    $stmt->bind_param("ssss", $Name, $Service, $Date, $Time);
    $stmt->execute();
    echo "Done";
    $stmt->close();
   
}
$conn->close();
?>