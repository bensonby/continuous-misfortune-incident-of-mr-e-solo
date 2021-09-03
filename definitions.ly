cr = \change Staff = "right"
cl = \change Staff = "left"
rh = \markup { \italic "r.h." }
lh = \markup { \italic "l.h." }
rhMark = \markup { 
  \path #0.1 #'((moveto -0.6 0)(rlineto 0 -1.5)(rlineto 0.5 0))
}
lhMark = \markup { 
  \path #0.1 #'((moveto 0 1)(rlineto -0.5 0)(rlineto 0 -1.5))
}

pCresc = \markup \concat { \dynamic "p" \italic \larger "  cresc." }

shpSlurA = \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0)) PhrasingSlur
shpSlurB = \shape #'((0 . 2) (0 . 1) (0 . 1) (0 . 2)) PhrasingSlur
shpSlurC = \shape #'((0 . 0.5) (0 . 0.5) (0 . 0.5) (0 . 0.5)) PhrasingSlur
shpSlurD = \shape #'((0 . 0) (0 . 0.3) (0 . 0.3) (0 . 0.8)) PhrasingSlur
shpSlurE = \shape #'((0 . -0.4) (0 . -0.5) (0 . -0.3) (0 . 0)) PhrasingSlur
shpSlurF = \shape #'((0 . 0.4) (0 . -0.2) (0 . -0.3) (0 . -0.5)) PhrasingSlur
hairpinA = \once \override Hairpin.Y-offset = #1
hairpinB = \once \override Hairpin.Y-offset = #1.5
hairpinC = \once \override Hairpin.Y-offset = #-1
dynamicShiftA = \once \override DynamicText.Y-offset = #-5.2
dynamicShiftB = \once \override DynamicText.X-offset = #-0.8
dynamicShiftC = \once \override DynamicText.Y-offset = #0
dynamicShiftD = {
  \once \override DynamicText.Y-offset = #-0.02
  \once \override DynamicText.X-offset = #-0.7
}
dynamicShiftE = \once \override DynamicText.Y-offset = #0.5
textScriptShiftA = \once \override TextScript.extra-offset = #'(-0.7 . 0.6)
scriptShiftA = \once \override Script.padding = #0.3
scriptShiftB = \once \override Script.padding = #0.4
metronomePaddingA = \once \override Score.MetronomeMark.padding = #4
metronomePaddingB = \once \override Score.MetronomeMark.padding = #2

suppressAccidental = \once \override Accidental #'stencil = ##f
dashedLine = \override Glissando.style = #'dashed-line
dashedLineFollower = \override VoiceFollower.style = #'dashed-line
dashedLineFollowerA = \override VoiceFollower.bound-details.left.padding = #3
arpeggioBracket = \once \override PianoStaff.Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
