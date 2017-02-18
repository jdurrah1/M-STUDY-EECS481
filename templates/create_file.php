<?php

$data = $_POST['formData'];
$url = "https://apis.voicebase.com/v2-beta/media";
$TOKEN = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJqdGkiOiI2ODAyOTUwZC03NDhlLTQ4OWItOWE5OC1lOTAzNTM0NzQxZTciLCJ1c2VySWQiOiJhdXRoMHw1ODlhNWU3NjJkMzYzMDRmOTg2MTY5ZGMiLCJvcmdhbml6YXRpb25JZCI6ImEzNTJjNTM4LTNhZmUtMDM2Ni02YTBmLWFkNjEyMmRiMGJjZCIsImV4cCI6MTQ4NzQ1MzM3NjQ0NSwiZXBoZW1lcmFsIjp0cnVlLCJpYXQiOjE0ODc0NDYxNzY0NDUsImlzcyI6Imh0dHA6Ly93d3cudm9pY2ViYXNlLmNvbSJ9.zqBPSeNUgQwj3rOMJdV6Vvpbsy1j3Bl0OehIV9PCd9M";

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_POST, count($data));
curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
curl_setopt($ch, CURLOPT_HTTPHEADER, array("Authorization: Bearer ${TOKEN}", "Content-Type: multipart/form-data"));

$result = curl_exec($ch);
curl_close($ch);

?>