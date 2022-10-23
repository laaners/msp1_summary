for file in *.png;
do
    echo $file
    echo ffmpeg -y -hide_banner -i "$file"  "../$file"
    ffmpeg -y -hide_banner -i "$file" -c:v mjpeg -crf 24  "../$file"
done