<?php

    $host = 'localhost';
    $user = 'root';
    $pass = '';
    $dbname = 'idiomas';

    //crear conexión
    $conn = new mysqli($host, $user, $pass, $dbname);

    //verificar conexión
    if($conn->connect_error){
        http_response_code(500);
        echo json_encode(['error' => 'Error de cpnexión: ' . $conn->connect_error]);
        exit;
    }

    //consulta mysql

    $sql = "SELECT * FROM idiomas";
    $result= $conn->query($sql);

    $idioma = [];

    if($result && $result->num_rows > 0){
        while($row = $result->fetch_assoc()){
            $idiomas[] = $row;
        }
    }


    $conn->close();


    header("Content-Type: application/json");
    echo json_encode($idiomas);


?>
