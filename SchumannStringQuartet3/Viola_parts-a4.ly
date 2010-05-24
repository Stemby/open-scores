\version "2.12.0"

%{ \paper {
	between-system-padding = #1
	ragged-bottom=##f
	ragged-last-bottom=##f
} %}

\include "viola1.ly"
\include "viola2.ly"
\include "marks.ly"

% #(set-global-staff-size 20)
#(set-global-staff-size 22.45)

\book {
	\header { instrument = \markup { \rounded-box "Viola" } }
	\score {
		\new Staff { \violaPmo }
		\layout { indent = 0\cm }
	}
	\score {
		\new Staff {
			\pageBreak% IT DOESN'T WORK: WHY?
			\violaSndo
		}
		\layout { indent = 0\cm }
	}
}
