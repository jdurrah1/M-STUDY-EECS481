var audio_context;
var recorder;
var is_recording = false;

function startUserMedia(stream) {
	var input = audio_context.createMediaStreamSource(stream);
	recorder = new Recorder(input);
}

function toggleRecording(button) {
	if (is_recording) {
		// stop recording
		recorder && recorder.stop();
		is_recording = false;
		console.log("recording stopped");
		createDownload();
		recorder.clear();
	}
	else {
		// start recording
		recorder & recorder.record();
		is_recording = true;
		console.log("recording started");
	}
}

function createDownload() {
	recorder && recorder.exportWAV(function(blob) {
		var url = URL.createObjectURL(blob);
		var dwn = document.getElementById('download_recording');
		dwn.href = url;
		dwn.download = new Date().toISOString() + '.wav';

		// $.ajax({
		// 	type: 'POST',
		// 	url: 'create_file.php',
		// 	data: { 
		// 		formData
		// 	},
		// 	processData: false,
		// 	contentType: false,
		// 	// beforeSend: function(xhr) {
		// 	// 	xhr.setRequestHeader('Authorization','Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJqdGkiOiI2ODAyOTUwZC03NDhlLTQ4OWItOWE5OC1lOTAzNTM0NzQxZTciLCJ1c2VySWQiOiJhdXRoMHw1ODlhNWU3NjJkMzYzMDRmOTg2MTY5ZGMiLCJvcmdhbml6YXRpb25JZCI6ImEzNTJjNTM4LTNhZmUtMDM2Ni02YTBmLWFkNjEyMmRiMGJjZCIsImV4cCI6MTQ4NzQ1MzM3NjQ0NSwiZXBoZW1lcmFsIjp0cnVlLCJpYXQiOjE0ODc0NDYxNzY0NDUsImlzcyI6Imh0dHA6Ly93d3cudm9pY2ViYXNlLmNvbSJ9.zqBPSeNUgQwj3rOMJdV6Vvpbsy1j3Bl0OehIV9PCd9M');
		// 	// 	xhr.setRequestHeader('Content-Type', 'multipart/form-data');
		// 	// },
		// 	success: function(data) {
		// 		console.log(data);
		// 	}
		// });
	})
}

document.getElementById("file-form").onsubmit = function(event) {
	event.preventDefault();

	var fileSelect = document.getElementById('file-select');
	var uploadButton = document.getElementById('upload-button');
	var file = fileSelect.files[0];
	var formData = new FormData();

	formData.append('media', file, file.name);
	console.log(formData);

	// var xhr = new XMLHttpRequest();
	// xhr.open("POST","https://apis.voicebase.com/v2-beta/media",true);
	// xhr.setRequestHeader("Authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJqdGkiOiI5NTdlODk3My0xYzU5LTRhODgtYTc4MS03NGZjNGI0ZDYyNWIiLCJ1c2VySWQiOiJhdXRoMHw1ODlhNWU3NjJkMzYzMDRmOTg2MTY5ZGMiLCJvcmdhbml6YXRpb25JZCI6ImEzNTJjNTM4LTNhZmUtMDM2Ni02YTBmLWFkNjEyMmRiMGJjZCIsImV4cCI6MTQ4NzQ2MzgxNjUzMSwiZXBoZW1lcmFsIjp0cnVlLCJpYXQiOjE0ODc0NTY2MTY1MzEsImlzcyI6Imh0dHA6Ly93d3cudm9pY2ViYXNlLmNvbSJ9.DMOfId0CRjXMobEUCA_svnvME7tuf3sWeokUkP2cvlw");
	// xhr.setRequestHeader("Content-Type", "multipart/form-data");
	// xhr.onreadystatechange = function() {
	// 	if (xhr.status === 200) {
 //    		// File(s) uploaded.
 //    		uploadButton.innerHTML = 'Upload';
 //  		} else {
 //    		alert('An error occurred!');
 //  		}

	 $.ajax({
	 	type: 'POST',
	 	url: 'create_file.php',
	 	data: { 
	 		form_data = formData
	 	},
	 	processData: false,
	 	contentType: false,
		success: function(data) {
			console.log(data);
		}
	});
}

window.onload = function init() {
	try {
		window.AudioContext = window.AudioContext || window.webkitAudioContext;
		navigator.getUserMedia = navigator.getUserMedia || navigator.webkitGetUserMedia;
		window.URL = window.URL || window.webkitURL;

		audio_context = new AudioContext;
	} catch (e) {
		alert('no web audio support in this browser');
	}
	navigator.getUserMedia({audio: true}, startUserMedia, function(e) {
		console.log("no live input" + e);
	});
};