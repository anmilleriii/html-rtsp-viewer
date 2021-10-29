#!/bin/bash

# Convert RTSP incoming stream to HLS to provide to HTML client
# See https://girishjoshi.io/post/ffmpeg-rtsp-to-hls/
# RTSP_STREAM_URL="rtsp://192.168.0.90:554/axis-media/media.amp"
RTSP_STREAM_URL="rtsp://169.254.230.75/axis-media/media.amp"
# Run from repository root directory (/html-rtsp-viewer)
OUTPUT_DIRECTORY="./view/src/assets/stream"

ffmpeg -fflags nobuffer \
    -rtsp_transport tcp \
    -i $RTSP_STREAM_URL -vsync 0 \
    -copyts \
    -vcodec copy \
    -movflags frag_keyframe+empty_moov \
    -an \
    -hls_flags delete_segments+append_list \
    -f segment \
    -segment_list_flags live \
    -segment_time 0.5 \
    -segment_list_size 1 \
    -segment_format mpegts \
    -segment_list $OUTPUT_DIRECTORY/index.m3u8 \
    -segment_list_type m3u8 \
    -segment_list_entry_prefix $OUTPUT_DIRECTORY/ \
    $OUTPUT_DIRECTORY/%3d.ts
