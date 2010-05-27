\version "2.12.0"

\include "violinoI1.ly"
\include "violinoII1.ly"
\include "viola1.ly"
\include "cello1.ly"
\include "violinoI2.ly"
\include "violinoII2.ly"
\include "viola2.ly"
\include "cello2.ly"
\include "violinoI3.ly"
\include "violinoII3.ly"
\include "viola3.ly"
\include "cello3.ly"
\include "marks.ly"

#(set-global-staff-size 12.60)

Primo = \new StaffGroup {
	<<
	\new Staff { \violinoIPmo }
	\new Staff { \violinoIIPmo }
	\new Staff { \violaPmo }
	\new Staff { \celloPmo }
	>>
}
Secondo = \new StaffGroup {
	<<
	\new Staff { \violinoISndo }
	\new Staff { \violinoIISndo }
	\new Staff { \violaSndo }
	\new Staff { \celloSndo }
	>>
}
Terzo = \new StaffGroup {
	<<
	\new Staff { \violinoITzo }
	\new Staff { \violinoIITzo }
	\new Staff { \violaTzo }
	\new Staff { \celloTzo }
	>>
}
\book {
%{	\score {
		<<
		\Primo
		\staffinstvlI
		\staffinstvlII
		\staffinstvla
		\staffinstvlc
		>>
		\layout { indent = 1.4\cm }
	}
	\score {
		\unfoldRepeats { \Primo }
		\midi {
			\context {
				\Voice
				\remove "Dynamic_performer"
			}
		}
	}
	\score {
		\Secondo
		\layout { }
	}
	\score {
		\unfoldRepeats { \Secondo }
		\midi {
			\context {
				\Voice
				\remove "Dynamic_performer"
			}
		}
	} %}
	\score {
		\Terzo
		\layout { }
	}
	\score {
		\unfoldRepeats { \Terzo }
		\midi {
			\context {
				\Voice
				\remove "Dynamic_performer"
			}
		}
	}
}
