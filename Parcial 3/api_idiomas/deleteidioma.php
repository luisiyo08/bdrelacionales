<?php

    header("Content-Type: appilcation/json");

    if($_SERVER['REQUEST_METHOD'] !== 'DELETE'){
        http_response_code(405);
        echo json_encode(['error' => 'Solo metodo DELETE es permitido']);
    }

    require 'conexionSakila.php';

    $input = json_decode(file_get_contents('php://input'), true);
    $idioma_id = intval($input["idioma_id"]);

    $query ="DELETE FROM idiomas WHERE id =?";
    
    $st = $conn->prepare($query);
    if(!$st){
        http_response_code(500);
        echo json_encode(["error" => "ocurrio un error en la consulta",  $conn->error]);
        exit();
    }
    $st->bind_param("i", $idioma_id);
    $st->execute();

    if($st->affected_rows > 0){
        echo json_encode(["mensaje" => "idioma eliminado con exito"]);
    }else{
        http_response_code(404);
        echo json_encode(["error" => "no se encontro el idioma con ID $idioma_id"]);
    }
    $st->close();
    $conn->close();

    
?>