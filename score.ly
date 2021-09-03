\version "2.20.0"

\include "makeOctaves.ly"
\include "definitions.ly"
\include "rh.ly"
\include "lh.ly"

\header {
  title = "呂爵安 - E先生連環不幸事件"
  subtitle = "Piano Solo"
  composer = "呂爵安、溫翰文、Cousin Fung"
  arranger = "Arranged by Benson"
}

global-tempo = {
  \tempo 4 = 82
}
global = {
  \key bes \major
}

rh = \relative c' {
  \clef bass
  \metronomePaddingA
  \tag #'mini { \metronomePaddingB }
  \global-tempo
  \global
  \rh-intro
  \rh-verse-A
  \rh-chorus-A
  \rh-episode-A
  \rh-verse-B
  \rh-chorus-B
  \rh-episode-B
  \rh-bridge
  \rh-chorus-C
  \bar "|."
}

lh = \relative c {
  \clef bass
  \global
  \lh-intro
  \lh-verse-A
  \lh-chorus-A
  \lh-episode-A
  \lh-verse-B
  \lh-chorus-B
  \lh-episode-B
  \lh-bridge
  \lh-chorus-C
  \lh-outro
  \bar "|."
}

dynamics = {
  % intro
  s1\p s1*3

  % verse-A
  s1 s1*6 s2 s4..\< s16\!
  s1*2 s2. s8.\> s16\! s2. s8 s8\mf s2

  % chorus A
  s1 s1*2 s2 s2\< s1\! s1*2 s1
  s1 s2 s4..\< s16\! s1 s4..\> s16\! s2 s1*2

  % episode A
  s1\mf s2. s4\< s1\! s2 s16 s8.\> s4

  % verse-B
  s1\mp s1*5 s1\cresc s2 s2\mf

  % chorus B
  s1 s1*6 s2..\< s8\!
  s1\! s1*4 s2
  s4..\< s16\!

  % episode B
  \tag #'mini { \dynamicShiftD }
  s1\f s1*7

  % bridge
  \dynamicShiftA
  \tag #'mini { \dynamicShiftC }
  s1\f s1*3 \tag #'mini { \textScriptShiftA } s1 s1
  s1 \hairpinA s4..\> s16\! s2

  % chorus C
  s1\p s1*3
  s4. s8\cresc s2 s2... s16\!
  s8 \dynamicShiftB s4.\mf s2 s8 s4.\< s4 s4\!

  s1\f s1*2 s2 s4.\> s8\! s1\mp s1

  % outro
  s1*3 s2. \textScriptShiftA s4-"rit." s1
}

\paper {
  page-breaking = #ly:page-turn-breaking
  oddFooterMarkup = \markup {
    \fill-line {
      "https://music.bensonby.me"
    }
  }
  evenFooterMarkup = \oddFooterMarkup
  footnote-footer-padding = 4.5\mm
  last-bottom-spacing.basic-distance = #11
}
\score {
  \new PianoStaff <<
    \set PianoStaff.connectArpeggios = ##t
    \set PianoStaff.instrumentName = #"Piano"
    \new Staff = "right" \with {
      \consists "Span_arpeggio_engraver"
    } {
      \set Staff.midiInstrument = #"acoustic grand"
      \set Staff.midiMinimumVolume = #0.6
      \set Staff.midiMaximumVolume = #0.7
      \removeWithTag #'mini \rh
    }
    \new Dynamics = "Dynamics_pf" \removeWithTag #'mini \dynamics
    \new Staff = "left" {
      \set Staff.midiInstrument = #"acoustic grand"
      \set Staff.midiMinimumVolume = #0.6
      \set Staff.midiMaximumVolume = #0.7
      \removeWithTag #'mini \lh
    }
  >>
  \layout {
    \context {
      % add the RemoveEmptyStaffContext that erases rest-only staves
      \Staff \RemoveEmptyStaves
    }
    \context {
      % add the RemoveEmptyStaffContext that erases rest-only staves
      % \Dynamics \RemoveEmptyStaves
    }
    \context {
      \Score
      % Remove all-rest staves also in the first system
      % \override VerticalAxisGroup.remove-first = ##t
      % If only one non-empty staff in a system exists, still print the starting bar
      % \override SystemStartBar.collapse-height = #1
    }
  }
  \midi {
  }
}

\book {
  \bookOutputSuffix "mini"
  #(set! paper-alist (cons '("snippet" . (cons (* 109 mm) (* 137.16 mm))) paper-alist))
  \header {
    piece = "呂爵安 - E先生連環不幸事件"
    opus = "Arranged by Benson"
    title = ""
    subtitle = ""
    subsubtitle = ""
    composer = ""
    arranger = ""
  }
  \paper {
    #(set-paper-size "snippet")
    indent = 0
    tagline = ##f
    print-all-headers = ##f
    evenHeaderMarkup = ##f
    oddHeaderMarkup = ##f
    evenFooterMarkup = ##f
    oddFooterMarkup = ##f
    % top-margin = 1\mm
    top-markup-spacing.basic-distance = #1 %-dist. from bottom of top margin to the first markup/title
    markup-system-spacing.basic-distance = #2 %-dist. from header/title to first system
    top-system-spacing.basic-distance = #0.6 %-dist. from top margin to system in pages with no titles
    system-system-spacing.basic-distance = #1 %-dist. from top margin to system in pages with no titles
    last-bottom-spacing.basic-distance = #0.3 %-pads music from copyright block
  }

  \score {
    \new PianoStaff <<
      \new Staff = "right" \with {
        \consists "Span_arpeggio_engraver"
      } { \keepWithTag #'mini \rh }
      \new Dynamics = "dynamics" { \keepWithTag #'mini \dynamics }
      \new Staff = "left" { \keepWithTag #'mini \lh }
    >>
    \layout {
      #(layout-set-staff-size 16)
      \context {
        % add the RemoveEmptyStaffContext that erases rest-only staves
        \Staff \RemoveEmptyStaves
      }
      \context {
        \Score
        % Remove all-rest staves also in the first system
        \override VerticalAxisGroup.remove-first = ##t
      }
      \context {
        \Voice
        % \override Script.stencil = #bold-tenuto-script-stencil
      }
    }
  }
}
