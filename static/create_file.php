<?php

set_time_limit(0);
$ch = curl_init(); 
$data = $_POST['form_data'];
$url = "https://apis.voicebase.com/v2-beta/media";
$TOKEN = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJqdGkiOiI2ODAyOTUwZC03NDhlLTQ4OWItOWE5OC1lOTAzNTM0NzQxZTciLCJ1c2VySWQiOiJhdXRoMHw1ODlhNWU3NjJkMzYzMDRmOTg2MTY5ZGMiLCJvcmdhbml6YXRpb25JZCI6ImEzNTJjNTM4LTNhZmUtMDM2Ni02YTBmLWFkNjEyMmRiMGJjZCIsImV4cCI6MTQ4NzQ1MzM3NjQ0NSwiZXBoZW1lcmFsIjp0cnVlLCJpYXQiOjE0ODc0NDYxNzY0NDUsImlzcyI6Imh0dHA6Ly93d3cudm9pY2ViYXNlLmNvbSJ9.zqBPSeNUgQwj3rOMJdV6Vvpbsy1j3Bl0OehIV9PCd9M";

curl_setopt($ch, CURLOPT_POST, 1);
curl_setopt($ch, CURLOPT_VERBOSE, 1);
curl_setopt($ch, CURLOPT_TIMEOUT, 0);
curl_setopt($ch, CURLOPT_LOW_SPEED_LIMIT, 0);
curl_setopt($ch, CURLOPT_LOW_SPEED_TIME, 60);
curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 300);
curl_setopt($ch, CURLOPT_URL, $url);                
curl_setopt($ch, CURLOPT_HTTPHEADER, array("Authorization: Bearer ${TOKEN}", "Content-Type: multipart/form-data"));
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_POSTFIELDS, $data);      
$result = json_decode(curl_exec($ch),TRUE);
curl_close($ch);

?>