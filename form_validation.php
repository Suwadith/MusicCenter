<?php

require "config.php";
$conn    = Connect();
$title = $conn->real_escape_string($_POST['title']);
$album = $conn->real_escape_string($_POST['album']);
$releaseDate = $conn->real_escape_string($_POST['releaseDate']);
$composer = $conn->real_escape_string($_POST['composer']);
$genre = $conn->real_escape_string($_POST['genre']);
$photo = $conn->real_escape_string($_POST['photo']);

$query = "INSERT INTO song_data (title, album, releaseDate, composer, genre, photo) VALUES('" . $title . "','" . $album . "','" . $releaseDate . "','" . $composer . "','" . $genre . "','" . $photo . "')";

$success = $conn->query($query);

if (!$success) {

    echo "<script type=\"text/javascript\">".
        "alert('Unable to Save Data');".
        "</script>";

    header("Location: home.php");

    die("Couldn't enter data: ".$conn->error);

}else{

    echo '<script type="text/javascript">';
    echo 'alert("Successfully Saved");';
    echo 'window.location.href = "songs.php";';
    echo '</script>';

}



$conn->close();

?>