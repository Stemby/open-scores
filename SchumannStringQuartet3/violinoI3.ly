\version "2.12.0"

\include "defs.ly"

violinoITzo = \context Voice = vlI {
	\relative c'' {
		\set Staff.midiInstrument = #"violin"
		\set Score.skipBars = ##t
		\override Score.PaperColumn #'keep-inside-line = ##t
		\adagioMolto
		\partial 4 a4
		b4. cis8 d e fis g
		fis4 e2 a8. g16
		g4 fis8 e d4 d,8. c'16
		c4 b2 a4
		b4. cis?8 d e \times 2/3 { fis a g }
		fis4 eis2 b'8.a16
		a4 gis8 fis e?4 e,8. d'?16
		d4 cis r2
		r4 a2 ais4
		b2 r%		10
		r4 b2 bis4
		cis2 cis4 d8 e
		fis4. g8 a b c d
		c b b, cis? e d a' g
		fis4 e8.d16 d8 c e d
		c b d c b a c b
		a g b, cis? e d a' g
		fis e d b a4 a
		a r r f'
		bes as r f%		20
		bes as r f
		bes as c4. as8
		as4 g r d
		g2 r4 d
		g f a4. f8
		f4 e r e
		f4. gis8 a b c d
		e4 e, r2
		r4 ais2 c8. e16
		<cis e>4 fis, r fis%		30

		\bar "|."
	}
}
