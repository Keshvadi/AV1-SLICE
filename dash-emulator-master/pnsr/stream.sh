#!/bin/bash

# Set the URL and duration of the video
VIDEO_URL="http://distribution.bbb3d.renderfarming.net/video/mp4/bbb_sunflower_1080p_60fps_stereo_abl.mp4"
VIDEO_DURATION=10

# Stream the video for the specified duration and save it to a file
ffmpeg -t $VIDEO_DURATION -i $VIDEO_URL -c copy video.mp4

# Calculate the PSNR for each second of the video and save the results to a file
# ffmpeg -i video.mp4 -i $VIDEO_URL -lavfi "psnr=stats_file=psnr.log" -f null -
# ffmpeg -i video.mp4 -i $VIDEO_URL -lavfi "psnr=stats_file=psnr.log:timebase=1/1000" -f null -
ffmpeg -i video.mp4 -i $VIDEO_URL -lavfi "psnr=stats_file=psnr.log" -use_wallclock_as_timestamps 1 -f null -

# Parse the PSNR log file and extract the PSNR values
awk '/average:/ {print $10}' psnr.log > psnr_values.txt

# Print the PSNR values to the console
echo "PSNR values (dB):"
cat psnr_values.txt

# Clean up the temporary files
# rm video.mp4 psnr.log
