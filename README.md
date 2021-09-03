# Solo

541 bars at tempo 120
number of seconds = 541 * 4 / 2 = 1082 seconds (18:02.000)

time in video till clap: 00:16.18
time in full audio till clap: 16:23.407

video: 01:57 till 06:32
audio in un-trimmed: 18:04.227 till 22:39.227
audio in trimmed: 00:02.227 till 4:37.227

```
ffmpeg -ss 01:57.000 -to 06:32.000 -i IMG_1198.MOV -ss 0:02.227 -t 4:35.0 -i edan-solo.wav -c:v copy -c:a aac -map 0:v:0 -map 1:a:0 output.mp4
```

score size: 858 width x 1080 height

## Adding score image to video
```
ffmpeg -i output.mp4 \
-f lavfi -i "color=white@0.93:s=858x1080,format=rgba" \
-i images/output-0.png \
-i images/output-1.png \
-i images/output-2.png \
-i images/output-3.png \
-i images/output-4.png \
-i images/output-5.png \
-i images/output-6.png \
-i images/output-7.png \
-i images/output-8.png \
-i images/output-9.png \
-i images/output-10.png \
-i images/output-11.png \
-i images/output-12.png \
-i images/output-13.png \
-i images/output-14.png \
-filter_complex \
"[0:v][1:v] overlay=1062:0[x]; \
[x][2:v] overlay=1062:0:enable='between(t,0,18)'[x]; \
[x][3:v] overlay=1062:0:enable='between(t,18,35)'[x]; \
[x][4:v] overlay=1062:0:enable='between(t,35,51.5)'[x]; \
[x][5:v] overlay=1062:0:enable='between(t,51.5,63)'[x]; \
[x][6:v] overlay=1062:0:enable='between(t,63,80.5)'[x]; \
[x][7:v] overlay=1062:0:enable='between(t,80.5,97.5)'[x]; \
[x][8:v] overlay=1062:0:enable='between(t,97.5,121)'[x]; \
[x][9:v] overlay=1062:0:enable='between(t,121,149)'[x]; \
[x][10:v] overlay=1062:0:enable='between(t,149,172)'[x]; \
[x][11:v] overlay=1062:0:enable='between(t,172,183)'[x]; \
[x][12:v] overlay=1062:0:enable='between(t,183,194.5)'[x]; \
[x][13:v] overlay=1062:0:enable='between(t,194.5,212)'[x]; \
[x][14:v] overlay=1062:0:enable='between(t,212,241)'[x]; \
[x][15:v] overlay=1062:0:enable='between(t,241,259)'[x]; \
[x][16:v] overlay=1062:0:enable='gt(t,259)'[x]; \
[x]fade=t=in:st=0:d=1.5, fade=t=out:st=274.0:d=1[x];
[0:a] afade=t=out:st=274.0:d=1.0[xa]
" -pix_fmt yuv420p \
-map "[x]" -map "[xa]" \
-t 275 output2.mp4
```

```
var time = [0, 18, 35, 51.5, 63, 80.5, 97.5, 121, 149, 172, 183, 194.5, 212, 241, 259];
time.map((v, i) => "[x][" + (i + 2) + ":v] overlay=1062:0:enable='between(t,"+v+","+time[i+1]+")'[x]; \ ");
```

