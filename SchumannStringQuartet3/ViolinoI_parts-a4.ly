\version "2.12.0"

%{ \paper {
between-system-padding = #1
ragged-bottom=##f
ragged-last-bottom=##f
} %}

\include "violinoI1.ly"
\include "violinoI2.ly"
\include "violinoI3.ly"
\include "marks.ly"

% #(set-global-staff-size 20)
#(set-global-staff-size 22.45)

\book {
%{ 	\header { instrument = \markup { \rounded-box "Violino I" } }
	\score {
		\new Staff { \violinoIPmo }
		\layout { indent = 0\cm }
	}
	\score {
		\new Staff {
			\pageBreak% IT DOESN'T WORK: WHY?
			\violinoISndo
		}
		\layout { indent = 0\cm }
	} %}
	\score {
		\new Staff {
			\pageBreak% IT DOESN'T WORK: WHY?
			\violinoITzo
		}
		\layout { indent = 0\cm }
	}
}
