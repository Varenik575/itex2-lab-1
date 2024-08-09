<?php

function fillDropdown($category)
{
    require('pdo.php');
    $stmt = $pdo->query("SELECT * FROM $category");
    while ($row = $stmt->fetch()) {
        echo ("<option value=" . $row['id'] . ">" . $row['name'] . "</option>");
    }
}
