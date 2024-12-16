<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logowanie</title>
</head>
<body>

<form action="" method="post">
    <input type="text" name="login" id="" placeholder="Login" required>
    <input type="text" name="haslo" id="" placeholder="Hasło" required>
    <input type="submit" value="Zaloguj">
</form>

<?php

if (isset($_POST['login']) && isset($_POST['haslo'])) {
    $login = $_POST['login'];
    $haslo = $_POST['haslo'];

    // Połączenie z bazą danych
    $mysqli = new mysqli('localhost', 'root', '123', 'kino');
    if ($mysqli->connect_error) {
        die("Nie udało połączyć się z bazą danych: " . $mysqli->connect_error);
    }

    // Sprawdzanie, czy użytkownik istnieje w bazie danych
    $stmt = $mysqli->prepare('SELECT * FROM loginy WHERE login = ?');
    $stmt->bind_param('s', $login);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows == 0) {
        // Jeśli użytkownik nie istnieje, dodaj nowy wpis do bazy danych
        $stmt = $mysqli->prepare('INSERT INTO loginy (login, haslo) VALUES (?, ?)');
        $stmt->bind_param('ss', $login, $haslo);
        $stmt->execute();

        // Ustaw ciasteczko dla nowego użytkownika
        setcookie($login, $haslo, time() + 3600, "/");
        echo "Witaj, $login. Twoje konto zostało założone.";
    } else {
        // Jeśli użytkownik istnieje, sprawdź hasło
        $row = $result->fetch_assoc();
        if ($row['haslo'] == $haslo) {
            // Hasło jest poprawne, ustaw ciasteczko
            setcookie($login, $haslo, time() + 3600, "/");
            echo "Witaj ponownie, $login!";
        } else {
            // Hasło jest niepoprawne
            echo "Niepoprawne hasło dla użytkownika $login.";
        }
    }

    // Zamknięcie połączenia z bazą danych
    $mysqli->close();
}

?>
</body>
</html>