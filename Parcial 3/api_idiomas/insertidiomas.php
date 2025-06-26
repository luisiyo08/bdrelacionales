<?php
    header("contect-Type: application/json");

    if($_SERVER['REQUEST_METHOD'] !== 'POST'){
        http_response_code(405);
        echo json_encode(['error' => 'Solo metodo POST es permitido']);
    }

    //conectar a la BD sakila
    require 'conexionSakila.php';

    $data = json_decode(file_get_contents('php://input'), true);
    $nombre = $data['nombre'];
    $nombre_pais = $data['nombre_pais'];
    $origen = $data['origen'];
    $numero_hablantes = $data['numero_hablantes'];

    $query = $conn->prepare("INSERT INTO idiomas (nombre, nombre_pais, origen, numero_hablantes) VALUES (?, ?, ?, ?)");

    if(!$query){
        http_response_code(500);
        echo json_encode(["error" => "Ocurrio un error"]);
        exit;
    }

    $query->bind_param("ssss", $nombre, $nombre_pais, $origen, $numero_hablantes);

    if($query->execute()){
        echo json_encode(["mensaje" => "Idioma insertado correctamente", "idioma_id" => $query->insert_id]);
    }else{
        http_response_code(500);
        echo json_encode(["error" => "Fallo a la insercion", $query->error]);
    }

    $query->close();
    $conn->close();

?>
