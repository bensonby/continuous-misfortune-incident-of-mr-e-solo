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


## Description

琴譜下載：

分析

1. 這個版本是鋼琴獨奏，所以編寫的時候有一點virtuoso的感覺。彈的時候可以選擇用很多的rubato，不用受流行曲唱歌的節奏所限。

2. 有些位置彈的時候可能會覺得左右手角色交換更好，不過我選擇了盡可能保留左右手角色不變的規律，希望令到整首歌減少東拼西湊的感覺，從而更像是一首鋼琴作品。(雖然很多地方做不到)

3. 這個獨奏版本的伴奏部分都是以edan的鋼琴版為基礎。不過在鋼琴solo的部分則選擇跟從MV版的音樂，所以如果跟伴奏版比對，就會發現一些不同，下面都會詳細提及。這樣可以令到我寫的獨奏版和伴奏版分別呈現了edan MV版和edan 鋼琴版的不同鋼琴獨奏。

00:00 bar 1-4: 看似是普通的和弦，其實要聆聽：第1-2小節 Bb major chord 底下由D落C 變sus chord聲音，以及第3-4小節Gm7 chord 底下由A上Bb 的resolution聲音。再放大一點看這4個小節其實是D C A Bb一整句。

00:13 bar 5-15: 左手同時彈bass和主音，右手彈背後的和弦節奏。左手由主音跳去bass 的轉變會難處理，可以把每句旋律的尾音放輕，以及利用pedal技巧連接好，例如踩一半pedal ，但同時小心太混濁或旋律斷開。總括而言這段的難度是要彈出3個layer的各自聲音。

00:20 bar 7, 11, 12: 旋律和伴奏的16分音符需要對齊

00:38 bar 13: 右手要幫手彈一個主音 (G) ，彈的時候盡量令右手的音色與左手一致

00:42 bar 15-16: 第16小節右手要彈Bb所以必須用pedal連住，因此第15小節的pedal可能要放輕一點避免bar 16的chord 太混濁

00:49 bar 17: 旋律的G與bar 18需要使用pedal 連住，這裡可以有一點rubato，不用很趕急彈bass的Eb

00:51 bar 18: 旋律低了一個八度，左右手角色一樣

00:52 bar 19: 右手幫手彈的C應該與左手的旋律在音質和音量上一致，而且右手高音的Bb 和C要比主音的low C彈得輕。bar 26的旋律也一樣

01:22 bar 29: [樂理] 第3至4拍是一個4-3 suspension (G major chord 的4音C去3音B 的resolution)

01:36 bar 34: 這裡與伴奏版不同。因為MV版這裡的鋼琴是有加上八度的

01:41 bar 36-53: 中間伴奏的chord 要明顯比旋律和bass輕，而且在左右手交替的時候要保持相同音質和音量。

02:46 bar 58-65: 這段solo大致跟伴奏版一樣，除了: 1. bar 59 第3拍右手的音不同，2. bar 61 第一拍右手是full chord ，3. bar 64 第4拍多了一個F#

03:10 bar 66: 如果手不夠大可以把第3拍的chord 改成A D A不彈Bb。而第4拍是要用1手指彈C同D兩個音

03:17 bar 68: 如果手不夠大可以把第4拍的chord 改成只彈八度Bb, 不彈C和F。這裡不建議彈Bb F Bb因為只有四度和五度的和弦聲音會比較空洞。

03:21 bar 70-71: 這裡左手的和弦中間加了inner voice，可以突出一點，聆聽這個inner line 帶來的效果，即是bar 70 Eb D Eb F Eb D C, bar 71 Bb A Bb C Bb A Bb。

03:30 bar 73: 這裡有突然的漸細聲去下一段，做漸細的時候要比較小心pedal的轉換，因為之前的bass可能很大聲

03:33 bar 74-78: 整首樂曲最靜的段落，左手的chord除了寫得高音外，也少用chord 的root position 令到bass line 較少轉變，維持靜的感覺。到後來bar 78開始漸大才把bass 一層層向下降

03:52 bar 80: 左手的十度如果手不夠大可以用arpeggio 彈出來

04:08 bar 85: 這裡的漸細可以同時加入一點漸慢，令過渡更自然，尤其右手要緊接住彈bar 86的D 和Eb ，如果速度太快會很難彈。左手這裡刻意加了passing bass notes A 和 B，兩個first inversion chord 去幫手做過渡
