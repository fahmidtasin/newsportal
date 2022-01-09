<?php
$uname=$_POST['username'];
$email=$_POST['uemail'];
$pass=$_POST['password'];

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "newsportal";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "INSERT INTO tbladmin (AdminUserName,AdminEmailId ,AdminPassword,Is_Active)
VALUES ('$uname', '$email', $pass,1)";

if ($conn->query($sql) === TRUE) {
     echo "<script>window.alert('Successfully Registered!')</script>";
     echo "<script>window.location.assign('signup.php?')</script>";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>