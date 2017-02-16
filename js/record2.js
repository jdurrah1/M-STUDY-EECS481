function RecordAudio(stream, cfg) {

  var config = cfg || {};
  var bufferLen = config.bufferLen || 4096;
  var numChannels = config.numChannels || 2;
  this.context = stream.context;
  var recordBuffers = [];
  var recording = false;
  this.node = (this.context.createScriptProcessor ||
    this.context.createJavaScriptNode).call(this.context,
    bufferLen, numChannels, numChannels);

  stream.connect(this.node);
  this.node.connect(this.context.destination);

  this.node.onaudioprocess = function(e) {
    if (!recording) return;
    for (var i = 0; i < numChannels; i++) {
      if (!recordBuffers[i]) recordBuffers[i] = [];
      recordBuffers[i].push.apply(recordBuffers[i], e.inputBuffer.getChannelData(i));
    }
  }

  this.getData = function() {
    var tmp = recordBuffers;
    recordBuffers = [];
    return tmp; // returns an array of array containing data from various channels
  };

  this.start() = function() {
    recording = true;
  };

  this.stop() = function() {
    recording = false;
  };
}

var recorder = new RecordAudio(userMedia);
recorder.start();
recorder.stop();
var recordedData = recorder.getData()