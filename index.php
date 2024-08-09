<?php

require_once 'fill-dropdown.php';
require_once 'get-data.php';
?>


<DOCTYPE html>

    <html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="styles.css" />
        <title>ЛБ 2-1-4 PDO</title>
    </head>

    <body>

        <header class="lab-header">
            <h1 class="lab-head">Лабораторна робота №1, варіант №4</h1>
            <p class="lab-subhead">на тему "Уніфікований інтерфейс PDO"</p>
            <p class="lab-subhead">Виконав ст. гр. КІУКІ-21-3 Букреева О.С.</p>
        </header>

        <main>

            <div>
                <form method="get">
                    <label for="genre-select">Search movies by genre </label>
                    <select id="genre-select" name="genre-select">
                        <option value="">Select genre</option>
                        <?php fillDropdown('genre') ?>
                    </select>
                    <input type="submit" value='Search' />
                </form>

                <form method="get">
                    <label for="actor-select">Search movies by actor</label>
                    <select id="actor-select" name="actor-select">
                        <option value="">Select actor</option>
                        <?php fillDropdown('actor') ?>
                    </select>
                    <button type="submit">Search</button>
                </form>

                <form method="get">
                    <label for="date-input-from">Search movies by release date, from</label>
                    <input id="date-input-from" name="date-input-from" type="date">
                    <p style="display:inline">to</p>
                    <input id="date-input-to" name="date-input-to" type="date">
                    <button type="submit">Search</button>
                </form>
            </div>


            <table>
                <?php
                createTbl('actor-select', "film_actor", "FID_Actor");
                createTbl('genre-select', "film_genre", "FID_Genre");
                filterByDate("date-input-from", "date-input-to");
                ?>
            </table>
        </main>

    </body>

    </html>