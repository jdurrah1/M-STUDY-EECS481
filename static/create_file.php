<?php

if(isset($_FILES['file']) and !$_FILES['file']['error']) {
	$fname = "test" . ".wav";
	move_uploaded_file($_FILES['file']['tmp_name'], "https://apis.voicebase.com/v2-beta/media" . $fname);
}

?>