<?php
    header("Content-Type: appilcation/json");

    if($_SERVER['REQUEST_METHOD'] !== 'PUT'){
        http_response_code(405);
        echo json_encode(['error' => 'Solo metodo Put es permitido']);
    }

    require 'conexionSakila.php';

    $input = json_decode(file_get_contents('php://input'), true);
    $idioma_id = intval($input["idioma_id"]);
    $nombre = $conn->real_escape_string($input["nombre"]);
    $nombre_pais = $conn->real_escape_string($input["nombre_pais"]);
    $origen = $conn->real_escape_string($input["origen"]);
    $numero_hablantes = $conn->real_escape_string($input["numero_hablantes"]);

    $query = "UPDATE idiomas SET nombre = ?, nombre_pais = ?, origen = ?, numero_hablantes = ? WHERE id = ?";
    
    $st = $conn->prepare($query);

    if(!$st){
        http_response_code(500);
        echo json_encode(["error" => "error en la consulta", $conn->error]);
        exit();
    }

    $st->bind_param("ssssi", $nombre, $nombre_pais, $origen, $numero_hablantes, $idioma_id);

    if($st->execute()){
        if($st->affected_rows > 0){
            echo json_encode(["message" => "idioma actualizado correctamente"]);
        }else{
            http_response_code(400);
            echo json_encode(["error" => "no se encontro el idioma con id: $idioma_id"]);
        }
    }else{
        http_response_code(500);
        echo json_encode(["error" => "error al ejecutar" , $st->error]);
    }
    $st->close();
    $conn->close();

?>