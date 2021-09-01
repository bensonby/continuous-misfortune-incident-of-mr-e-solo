lh-intro = \relative c, {
  <bes bes'>2.~\( q8 f'\)
  q2.\( f4\)
  <g, g'>2.\( d'4\)
  << {
    \oneVoice q1
    \voiceTwo <bes bes'>1
  } \\ {
    s2. \cr \oneVoice <f'' bes>16 d q d \dashedLineFollower \showStaffSwitch
    \cl \voiceOne \repeat unfold 8 { <bes' d>16 f }
  } >>
}
lh-verse-A = \relative c' {
  << {
    \repeat unfold 7 { <bes c>16 f } q f~
    \repeat unfold 8 { <f a>16 d }
    \repeat unfold 7 { <f a>16 d } <f bes> d
    \repeat unfold 8 { <bes' d>16 f }
    \repeat unfold 7 { <bes c>16 f } q f~
    \repeat unfold 8 { <f a>16 d }
    \repeat unfold 4 { <f a>16 d }
    <f a>16 d q d <f bes> d <bes' d> f

    \repeat unfold 7 { <bes d>16 g } \arpeggioBracket q\arpeggio g
    \repeat unfold 5 { <bes ees>16 g } q g \dashedLineFollower \showStaffSwitch \cr \stemDown q g g' ees
    \hideStaffSwitch

    \set tieWaitForNote = ##t 
    bes'16 ees,8 ees16 g ees g ees bes' ees, g8 g16 ees g~ ees~
    <bes ees g>2. \cl
  } \\ {
    <bes,, bes'>1
    <g g'>1
    q1
    <bes bes'>1
    q1
    <g g'>1
    q1
    <c c'>2.\( g'4\)
    <c, c'>2.\( g'4\)
    \stemNeutral
    <f, f'>2.\(\sustainOn c'4\)
    q2. \oneVoice r8\sustainOff
  } >>
}
lh-chorus-A = \relative c' {
  << {
    \oneVoice d16\( d \time 2/4 d8 c bes8. g16~ \time 4/4
    \voiceOne
    g4\) r8 g16\( d'~ d8 g,16 d'~ d8 g,
    \arpeggioBracket c4\)\arpeggio r8 a16\( a a8 bes c8 c~
    c4\) r8 a16\( f'~ f8 a,16 f'~ f8 a,16 bes~
    bes4\) r8 g\( f' ees d8. ees16~
    ees4\) r8 g,16\( g f'8 ees d d~
    d8 ees\) r a,16\( a a8 bes \cr \stemDown bes c\)
  } \\ {
    \cl
    s8 s2
    <ees,, ees'>1
    q1
    <d d'>1
    g1
    c,8\( g' d'16 ees~ ees8~ ees2\)
    d,2.\( a'8 d\)
  } >>
  g,4. d'8~ d4. g,8
  f4\( c'8 aes'\) bes,8\( f' d'4\)

  <ees,, ees'>1
  q2~ q8 bes'8 ees bes
  <d, d'>8\( aes' d f8~ f4 aes,\) % d or c?
  g8\( d' f g\) << { d'2 } \\ { c4\( b\) } >>
  \shpSlurA
  c,8\( g' c <d ees>~ q4\) c,
  f,8\( c' bes'4\) <ees,, ees'>2
}
lh-episode-A = \relative c {
  g16 d' g a bes d bes a g d g, d' g d g, d'
  f, c' f a bes d bes a f d f, d' f d f, d'
  e, bes' d e g bes d bes g e d bes e, bes' d bes
  ees,! bes' ees! f ges bes ges f f,8 c'16 f~ f16 ges f8
}
lh-verse-B = \relative c {
  \voiceTwo
  bes2. f'4
  bes,2 f'
  g,2~ g8 d'4.
  g,2~ g8 d'4.
  \oneVoice
  \shpSlurA
  c8\( g' c d8~ d\) g,4 c,8
  \shpSlurA
  c8\( g' c <d ees>8~ q\) g,4 c,8
  f,8 c' f4~ f8 c4 f,8
  f8 c' f c
  << {
    g'2
  } \\ {
    \scriptShiftB
    f,4--
    \scriptShiftA
    f--
  } >>
}
lh-chorus-B = \relative c, {
  \voiceTwo
  ees4. bes'8~ bes8 ees4 bes8
  ees,4. bes'8~ bes8 ees4 bes8
  d,4. a''8~\( a d,4 d,8\)
  g4. d'8~ d g4 g,8
  c,4. c'8~\( c d ees g\)
  d,4. d'8~\( d fis4 a,8\)
  g4. d'8~ d8 g4 g,8
  \oneVoice
  f4\( c'8 f\) bes,\( f' aes bes,\)
  \voiceTwo
  ees,2~ ees8 bes'4 ees8
  \oneVoice
  ees,4. bes'8 ees4 ees,
  d8\( aes' d f~ f\) d d,4
  g8\( d' f g g, d' <f g>4\)
  c,8\( g' d' <ees d' ees>~ q\) g c, c,
  f8 c' f c ees, bes' ees bes
}
lh-episode-B = \relative c { 
  g16 d' g d a' d, g d
  g,16 d' g d \makeOctaves 1 { d c bes a }
  f16 c' f c a' c, f c
  f, c' f c \makeOctaves 1 { ees d c bes }
  e, c' e c g' c, e c
  e, c' e c \makeOctaves 1 { f, e f g }
  <ees ees'>8 bes'4 ees8 <d, d'>2

  <g, g'>4 <d'' g bes> <g,, g'>4 <bes' d g>
  \repeat unfold 2 { <f, f'>4 <c'' f a> }
  <ees,, ees'>4 <ees'' g bes> <ees,, ees'> <bes'' ees g>
  <d,, d'>2.
  \clef treble <d'''' fis a>4-> \clef bass
}
lh-bridge = \relative c, {
  <g g'>8 d'' g d q d g g,
  <ges, ges'>8 ees'' ges ees q ees ges ges,
  <f, f'>8-> bes' c f~-> f c bes
  \tag #'mini {
    \once \override Beam.auto-knee-gap = #3
  }
  << {
    s8 s4 \cr \oneVoice <d'' g bes d>8 q~ \voiceTwo q16 \cl \oneVoice \clef treble \oneVoice <c c'> <bes bes'>8~ q8 r8 
  } \\ {
    \oneVoice <e,,,, e'>8~-> q8 bes''' c e
  } >>

  \clef bass <c,,, c'>8-> <g''' bes ees g>-. <g bes d g> <g bes ees g> <g bes f' g> <g bes ees g> <g bes d g> <g bes c g'>
  <d,, d'>8-> <f'' bes f'>-. <f a f'>-. <f bes f'>-. <f c' f>-. <f bes f'>-. <f a f'>-. <f bes f'>-.
  <ees,, ees'>8 bes'' ees <f ges bes>~ q ees4 <f, f'>8~\(
  q8 c' f c' \clef treble <bes' c f>2\)
}
lh-chorus-C = \relative c'' {
  <d ees g>1\arpeggio
  <d ees ges>\arpeggio
  <d f>\arpeggio
  <d f g>\arpeggio
  <c d ees g>\arpeggio
  <a c d fis>2\arpeggio d,
  r8 <g, bes'> <ges bes'> <f aes'>~ q4. \clef bass <bes, bes'>8~
  q8 f, bes f' bes f' <aes d>4

  <e, e'>4 <d'' g>8 bes q bes q bes
  <ees,,? ees'?>4 \clef treble <ees'' ges c>8 bes \clef bass ees, bes ees,4
  <d d'>8 f' aes f'~ f d, d, g~->
  g8 f'4-> d8 a <c' f> b, <g' d'>
  << { \set fingeringOrientations = #'(left) <ees' d\finger \rhMark>4. } \\ { c,8 g' c \clef treble <d ees bes'>~ \oneVoice q8 \clef bass g, <d' ees> c, } >>
  f,8\( c' <bes' c f>4\) <ees, ges'>2
}
lh-outro = \relative c {
  << {
    r16 f \repeat unfold 7 { <bes d>16 f }
    \repeat unfold 7 { <bes c>16 f } q f~
    \repeat unfold 8 { <f a>16 d }
    \repeat unfold 7 { <f bes>16 d } q16~ <d f bes>~
    q1
  } \\ {
    <bes, bes'>2.~ q8 f'
    q1
    <g, g'>1
    q1
    <bes, bes'>1
  } \\ { \voiceOne c'''16\rest } >>
}
