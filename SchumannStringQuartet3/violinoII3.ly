\version "2.12.0"

\include "defs.ly"

violinoIITzo = \context Voice = vlII {
	\relative c' {
		\set Staff.midiInstrument = #"violin"
		\set Score.skipBars = ##t
		\override Score.PaperColumn #'keep-inside-line = ##t
		\adagioMolto
		\partial 4 a8. d16
		d4. cis8 d e fis g
		fis4 e2 e4 ~
		e dis8 e d4 d ~
		d d2 <a d>8. d16
		d4. g8 fis < g a>^~ <fis a> <b, g'>% FORCING TIE DIRECTION
		<a fis'>4 <gis eis'> b'4. a8
		a4 gis8 fis e?4 e ~
		e e r2
		r r4 g? ~
		g fis r2%		10
		r r4 a ~
		a gis g4. e'8
		e4 d8 cis c b g' a
		g4 b,8 bes a4 ~ a8 d,
		e d a' gis a4 a ~
		a8 b4 g8 r a4 fis8
		e4 b8 bes a4 <b d>
		<a d>8 cis b g r4 a
		a \repeat unfold 3 { <d f>8. <d f>16 }%		19
		\repeat unfold 3 { \repeat unfold 4 { <d f>8. <d f>16 } }
		\repeat unfold 3 { <d f>8. <d f>16 } <b d>8. <b d>16
		\repeat unfold 2 { \repeat unfold 4 { <b d>8. <b d>16 } }
		<b d>8. <b d>16 \repeat unfold 3 { e8. e16 }%		26
		e4 d8 d e f e d
		<a e'>4 <gis e'>8. e'16 \repeat unfold 2 { e8. e16 }
		e8. e16 <e g?>8. <e g>16 \repeat unfold 2 { <e g>8. <e g>16 }
		<e g>4 \repeat unfold 3 { fis8. fis16 }%		30

		\bar "|."
	}
}
