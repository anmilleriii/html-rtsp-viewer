# html-rtsp-viewer

View an RTSP stream from the browser via Node.


## Architecture

| Package | Purpose | Reference |
| -- | -- | -- |
| node-rtsp-stream | receive stream from RTSP source and send to jsmpeg over WebSocket  | https://github.com/kyriesent/node-rtsp-stream |
| express | ??  | https://github.com/kyriesent/node-rtsp-stream |
| jsmpeg | asdfasdfsadf | https://github.com/phoboslab/jsmpeg |
| ffmpeg-static | -- | https://www.ffmpeg.org/ |



run shell while

`chmod u+x rstp-to-hls.sh`
## 


jsmpeg
JSMpeg is a Video Player written in JavaScript. It consists of an MPEG-TS demuxer, MPEG1 video & MP2 audio decoders, WebGL & Canvas2D renderers and WebAudio sound output. JSMpeg can load static videos via Ajax and allows low latency streaming (~50ms) via WebSockets.

ffmpeg


node-rtsp-stream
Stream any RTSP stream and output to websocket for consumption by jsmpeg. HTML5 streaming video! (Requires ffmpeg)





## Glossary

Demuxer

<img src="fhttps://upload.wikimedia.org/wikipedia/commons/e/e0/Telephony_multiplexer_system.gif"/>