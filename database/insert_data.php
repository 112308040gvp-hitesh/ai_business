<?php

$conn = new mysqli("localhost", "root", "", "test");

if($conn->connect_error){
    die("Connection failed");
}

$sql = "INSERT INTO users (name, email) VALUES ('Hetvi', 'hetvi@gmail.com')";

if($conn->query($sql) === TRUE){
    echo "Data inserted successfully";
} else {
    echo "Error: " . $conn->error;
}

?>
