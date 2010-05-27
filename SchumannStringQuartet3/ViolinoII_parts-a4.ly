\version "2.12.0"

%{ \paper {
between-system-padding = #1
ragged-bottom=##f
ragged-last-bottom=##f
} %}

\include "violinoII1.ly"
\include "violinoII2.ly"
\include "violinoII3.ly"
\include "marks.ly"

% #(set-global-staff-size 20)
#(set-global-staff-size 22.45)

\book {
%{ 	\header { instrument = \markup { \rounded-box "Violino II" } }
	\score {
		\new Staff { \violinoIIPmo }
		\layout { indent = 0\cm }
	}
	\score {
		\new Staff {
			\pageBreak% IT DOESN'T WORK: WHY?
			\violinoIISndo
		}
		\layout { indent = 0\cm }
	} %}
	\score {
		\new Staff {
			\pageBreak% IT DOESN'T WORK: WHY?
			\violinoIITzo
		}
		\layout { indent = 0\cm }
	}
}
