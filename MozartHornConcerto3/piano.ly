\version "2.13.10"

\include "defs.ily"
\include "piano.ily"
\include "horn.ily"

instrument = "Piano"
\include "header.ily"

#(set-global-staff-size 18)

\score
{
  <<
    \new Staff
    \with
    {
      fontSize = #-3
      \override StaffSymbol #'staff-space = #(magstep -3)
    }
    {
      << \hornAllegro \outlineAllegro >>
    }
    \new PianoStaff
    <<
      \new Staff="RH"
      {
        \pianoRightAllegro
      }
      \new Staff="RH"
      {
        \pianoLeftAllegro
      }
    >>
  >>
  \layout { }
}

\score
{
  <<
    \new Staff
    \with
    {
      fontSize = #-3
      \override StaffSymbol #'staff-space = #(magstep -3)
    }
    {
      << \hornRomanze \outlineRomanze >>
    }
    \new PianoStaff
    <<
      \new Staff="RH"
      {
        \pianoRightRomanze
      }
      \new Staff="RH"
      {
        \pianoLeftRomanze
      }
    >>
  >>
  \layout { }
}

\score
{
  <<
    \new Staff
    \with
    {
      fontSize = #-3
      \override StaffSymbol #'staff-space = #(magstep -3)
    }
    {
      << \hornRondo \outlineRondo >>
    }
    \new PianoStaff
    <<
      \new Staff="RH"
      {
        \pianoRightRondo
      }
      \new Staff="RH"
      {
        \pianoLeftRondo
      }
    >>
  >>
  \layout { }
}

\score
{
  \unfoldRepeats
  <<
    \new Staff
    {
      \set Staff.midiInstrument = "french horn"
      \hornAllegro
      \space
      \hornRomanze
      \space
      \hornRondo
    }
    \new PianoStaff
    <<
      \new Staff="RH"
      {
        << \pianoRightAllegro >>
        \space
        << \pianoRightRomanze >>
        \space
        << \pianoRightRondo >>
      }
      \new Staff="LH"
      {
        << \pianoLeftAllegro >>
        \space
        << \pianoLeftRomanze >>
        \space
        << \pianoLeftRondo >>
      }
    >>
    {
      \set Score.skipTypesetting = ##t
      \outlineAllegro
      \space
      \outlineRomanze
      \space
      \set Score.skipTypesetting = ##f
      \outlineRondo
    }
  >>
  \midi { }
}
