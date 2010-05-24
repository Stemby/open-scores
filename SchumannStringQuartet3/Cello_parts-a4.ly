\version "2.12.0"

%{ \paper {
	between-system-padding = #1
	ragged-bottom=##f
	ragged-last-bottom=##f
} %}

\include "cello1.ly"
\include "cello2.ly"
\include "marks.ly"

% #(set-global-staff-size 20)
#(set-global-staff-size 22.45)

\book {
	\header { instrument = \markup { \rounded-box "Violoncello" } }
	\score {
		\new Staff { \celloPmo }
		\layout { indent = 0\cm }
	}
	\score {
		\new Staff {
			\pageBreak% IT DOESN'T WORK: WHY?
			\celloSndo
		}
		\layout { indent = 0\cm }
	}
}
