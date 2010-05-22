\version "2.10.14"

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
	\header { instrument = \markup { \box "Viola" } }
	\score {
		\new Staff { << \mI \violaPmo >> }
		\layout { indent = 0\cm }
	}
	\score {
		\new Staff {
			\pageBreak
			<< \mII \violaSndo >>
		}
		\layout { indent = 0\cm }
	}
}
