rh-intro = \relative c' {
  \repeat unfold 8 { <bes d>16 f }
  \repeat unfold 7 { <bes c>16 f } q f~
  \repeat unfold 8 { <f a>16 d }
  \repeat unfold 8 { <f bes>16 d }
}

rh-verse-A = \relative c' {
  \clef treble
  r2 d8 f bes8 bes
  r4 r8 bes16 f bes8 bes c a
  r2 a16 g a8 a16 g a8
  r4 a a bes

  r2 d,8 f bes8 bes
  r4 r8 bes16 f bes8 bes d8 a
  r2 a16 g a8 a16 g a8
  r4 a16 g a8 a8 a bes g~
  g4. d'8~ d4. g,8~ g4. d'8( c4) \stemUp r8
  bes8 d8 c16 c~ c8 bes d8. c16~ c8 ees~
  ees2. \stemNeutral r4
  \time 2/4 R2 \time 4/4
}

rh-chorus-A = \relative c'' {
  \clef treble
  \repeat unfold 8 { <bes d>16 g }
  \repeat unfold 8 { <bes c>16 ges }
  \repeat unfold 8 { <a c>16 f }
  \repeat unfold 6 { <a c>16 f } <bes d> f <bes ees> g~
  <g bes ees>4 \repeat unfold 6 { d'16 ees }
  \repeat unfold 3 { <a, c>16 fis } q g fis ees d c bes8 <c ees>

  << {
    \cr
    c4 c8 bes ees4 d8 d~
    d4 r8 d'16 d d8 c bes8. g16~
    g8 r r g16 d'~ d8 g,16 d'~ d8 g,16 d'~
    d8 c r c16 c c8 d ees f~
    f4
  } \\ {
    a,,4 a a bes
    <aes c>4 d16 ees f g aes8 bes r4
    \repeat unfold 8 { <bes, d>16 g }
    bes'16 ges \repeat unfold 3 { <bes c>16 ges } <bes c> ges <bes d> ges <bes ees> ges <aes f'>8~
    q4
  } >>

  q8\( q~ q <aes ees'> <aes f'> <g b d>~
  q4.\) g8 c d f g,
  ees'4 r8 g, c d f8. g,16~
  <g ees'>4 r8 ees' << { des8. c16~ c4 } \\ { <ges bes>2 } >>
}

rh-episode-A = \relative c'' {
  \set Staff.connectArpeggios = ##t
  << {
    <d f bes>8.\(\arpeggio a'16~ a8 f~ \stemNeutral f d c bes
    <a c>8. <bes d>16~ q8 q8~ q8.\)
  } \\ {
    f8.\arpeggio bes16~ bes4 s2
  } >> d,16\( g a bes d
  <e a>8 g16 c~ c8 bes16 d~ d8 c16 bes~ bes16 g8.\)
  <ees! ges>8\( <ees c'>16 q~ q4\) r16 bes'\( ges f bes, ges f ees
  <d f>4\)
}

rh-verse-B = \relative c' {
  % first note at above for slur
  <d f>4 q <bes c d>
  q4 q q q
  <f a d>4 q q q
  q q q q
  <bes d ees>4. <ees bes'>8~ q4 <d ees>4~
  q4. <ees bes'>8~ q4 <d ees>4
  <g, bes ees>4. <bes ees f>8~ q4 <ees f bes>4
  <f bes c>2
}
rh-chorus-B = \relative c' {
  \scriptShiftA
  <bes bes'>4--
  \scriptShiftA
  <c c'>--
  <g' bes d>4 q q q
  <ges bes c>4 q q q
  <f a c>4 q q q
  <f a c>4 q q <g bes d>
  <g bes ees>4 q q q
  <fis a d>4 q q q
  <g a bes>4 q q q
  <f aes>\( <f aes c> <f aes d> <f f'>

  <g bes d g>4\) <g bes d> q q
  <ges bes d>8. <ges bes c>16~ q4 q8\( d' ees <aes, c f>~
  q4.\) q8~ q4 <c, f aes>4
  <d g b>2. g,4
  <g d' ees>4. <d' ees bes'>8~ q4 <d ees>4
  <c f>4.
}
rh-episode-B = \relative c' {
  \makeOctaves 1 { ees8^\mp\( des c\) f\(^\f fis }
  g'16\) bes, d g a d, g a bes d, a' bes \makeOctaves 1 { d, c bes a }
  a'16 c, f a bes c, f bes c c, f c' \makeOctaves 1 { ees, d c bes }
  c' e, g c d e, g d' e g, d' e \makeOctaves 1 { f, e f g }
  <g g'>8 \tuplet 3/2 8 { ees'16 bes g } \tuplet 6/4 4 { ees bes g ees bes g }
  <fis a d>8 \tuplet 3/2 8 { d'16 fis a } \tuplet 6/4 4 {  d fis a \ottava #1 d fis a }
  \tuplet 6/4 4 {
    bes16 a g \ottava #0 d bes a g d c bes a bes
    c bes c d ees d c bes a bes a g
    \ottava #1 a'' g
    \tag #'mini {
      \footnote #'(-2 . -4) \markup {
        \fontsize #-2
        "MV的音樂和鋼琴版的影像都是D音，但鋼琴版的聲音是F音，由於D音比較合理所以這裡選擇了D音。"
      } d
    }
    \tag #'print { d } \ottava #0 bes a g d bes a g a bes
    c bes c d ees d c bes c bes a bes
    g'' f ees bes g f ees bes a g a bes
    c bes c d ees d ees f g fis g a
  }
  << {
    \stemNeutral <d, fis d'>2. s4
  } \\ {
    \cl a,8\rest \stemDown a,32 d fis d \cr \stemUp fis[ a fis a]
    d32 \stemDown d[ fis a] d \stemUp d[ fis a] d \ottava #1
    \set Staff.ottavation = #"8"
    d fis a \stemNeutral
    <d, fis a d>4-> \ottava #0
  } >>
}
rh-bridge = \relative c'' {
  <g bes d>4\( <bes d bes'>2 q4\)
  <ges bes ees>4\( <bes ees bes'>2 q4\)
  <f bes c f>4.-> q8~-> q4. <g d' e g>8~->
  q2 \tuplet 6/4 { g''16\( d c g d c } g4\)
  <g, bes ees>8-. \repeat unfold 7 { q-. }
  <f bes f'>8-. \repeat unfold 7 { q-. }
  \makeOctaves 1 { ges'8\( ges ges f ges f ges a~ }
  q1\)
}
rh-chorus-C = \relative c'' {
  <g bes d>1
  <ges bes c>2 f'4\( bes,
  <f a c>1\)
  \arpeggioArrowDown
  <d f a>1\arpeggio
  ees4.  <g, bes ees>8~ q2
  <a c d fis>4. q8~ q4 q8-> q->
  r8 <bes d>-> <bes des>-> <aes c>->~ q4. <f aes d>8~
  q2 <d' d'>8\( <ees ees'> <f f'>4\)

  <g bes d g>4 <g bes d>8 bes, g'8 d <g bes> d
  <ees ges d'>8. <ees ges c>16~ q4 <ees ges c>8\( d' <ges, ees'> <aes c f>~
  q4.\) q8~ q4. <b d aes'>8~
  q8 <b d g>4. c,8\( d f4\)
  <d ees>4. <ees bes'>8~ q4 <d ees>4
  r4 <c f> <bes ees ges>2
}
rh-outro = \relative c' {
  \clef bass
  \repeat unfold 8 { <bes d>16 f }
  \repeat unfold 7 { <bes c>16 f } q f~
  \repeat unfold 8 { <f a>16 d }
  \repeat unfold 7 { <f bes>16 d } q16~ <d f bes>~
  q1
}
