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
		createWAVfile();
		recorder.clear();
	}
	else {
		// start recording
		recorder & recorder.record();
		is_recording = true;
		console.log("recording started");
	}
}

function createWAVfile() {
	recorder && recorder.exportWAV(function(blob) {
		var formData = new FormData();
		formData.append("body", blob);

		console.log(formData);

		$.ajax({
			type: 'POST',
			url: 'https://apis.voicebase.com/v2-beta/media',
			data: { 
				formData
			},
			processData: false,
			contentType: false,
			beforeSend: function(xhr) {
				xhr.setRequestHeader('Authorization','Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJqdGkiOiIxZjM3ZWM4MS1jZWJhLTQ2YjctODViNC1hYWE4NzYxZTI0MzMiLCJ1c2VySWQiOiJhdXRoMHw1ODlhNWU3NjJkMzYzMDRmOTg2MTY5ZGMiLCJvcmdhbml6YXRpb25JZCI6ImEzNTJjNTM4LTNhZmUtMDM2Ni02YTBmLWFkNjEyMmRiMGJjZCIsImV4cCI6MTQ4NzE5ODQ0NzM0NywiZXBoZW1lcmFsIjp0cnVlLCJpYXQiOjE0ODcxOTEyNDczNDcsImlzcyI6Imh0dHA6Ly93d3cudm9pY2ViYXNlLmNvbSJ9.htverlwM-XWzledeG_sdXqcrFDesL1HDtTk1OlegROI');
			},
			success: function(data) {
				console.log(data);
			}
		});
	})
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