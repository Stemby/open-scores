\version "2.10.14"

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
	\header { instrument = \markup { \box "Violoncello" } }
	\score {
		\new Staff { << \mI \celloPmo >> }
		\layout { indent = 0\cm }
	}
	\score {
		\new Staff {
			\pageBreak
			<< \mII \celloSndo >>
		}
		\layout { indent = 0\cm }
	}
}
