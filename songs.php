<?php
echo '<!DOCTYPE html>';
echo '<html lang="en">';
echo '<head>';
echo '<meta charset="UTF-8">';
echo '<title>Music Center</title>';
echo '<link rel="stylesheet" href="Style.css">';
echo '</head>';
require "config.php";
$conn = Connect();

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT songId, title, album, releaseDate, composer, genre, photo FROM song_data";
$result = $conn->query($sql);

echo '<body>';
echo '<div>';
echo '<h1>Songs</h1>';
if ($result->num_rows > 0) {
    echo '<table style="width:100%">';
    echo '<tr>';
    echo '<th>Song ID</th>';
    echo '<th>Title</th>';
    echo '<th>Album</th>';
    echo '<th>Release Data</th>';
    echo '<th>Composer</th>';
    echo '<th>Genre</th>';
    echo '<th>Photo</th>';
    echo '</tr>';
    // output data of each row
    while ($row = $result->fetch_assoc()) {
        echo '<tr>';
        echo '<td>'.$row["songId"].'</td>';
        echo '<td>'.$row["title"].'</td>';
        echo '<td>'.$row["album"].'</td>';
        echo '<td>'.$row["releaseDate"].'</td>';
        echo '<td>'.$row["composer"].'</td>';
        echo '<td>'.$row["genre"].'</td>';
        echo '<td>'.$row["photo"].'</td>';
        echo '</tr>';

    }
    echo "</table>";
} else {
    echo "0 results";
}
echo '</div>';
echo '</body>';
echo '</html>';
$conn->close();

?>



