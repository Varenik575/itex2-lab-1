<?php
function createTbl($result, $category, $FID)
{
    require 'pdo.php';
    if (isset($_GET[$result])) {
        $sql = "SELECT * from  $category WHERE $FID = :id";
        $stmt = $pdo->prepare($sql);
        $stmt->execute(array(':id' => $_GET[$result]));


        while ($films = $stmt->fetch()) {
            print_r($films['FID_Film']);

            $sql2 = 'SELECT name, date, country, director from film WHERE ID_FILM = :id';
            $stmt2 = $pdo->prepare($sql2);
            $stmt2->execute(array(':id' => $films['FID_Film']));
            while ($row = $stmt2->fetch()) {
                echo '<tr><td>' . $row['name'] . '</td><td>'
                    . $row['date'] . '</td><td>'
                    . $row['country'] . '</td><td>'
                    . $row['director'] . '</td></tr>';
            }
        };
    }
}

function filterByDate($from, $to)
{
    echo (`$_GET[$to]   $_GET[$from]`);
    require 'pdo.php';

    if (isset($_GET[$to]) && isset($_GET[$from])) {


        $fromDate = $_GET[$from];
        $toDate = $_GET[$to];

        $sql = "SELECT name, date, country, director from film WHERE date <= :todate AND date >= :fromdate";
        $stmt = $pdo->prepare($sql);
        $stmt->execute(array(':todate' => $toDate, ':fromdate' => $fromDate));


        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {

            echo '<tr><td>' . $row['name'] . '</td><td>'
                . $row['date'] . '</td><td>'
                . $row['country'] . '</td><td>'
                . $row['director'] . '</td></tr>';
        }
    }
}
