\version "2.12.0"

\include "defs.ly"

celloTzo = \context Voice = vlc {
	\relative c, {
		\set Staff.midiInstrument = #"cello"
		\set Score.skipBars = ##t
		\override Score.PaperColumn #'keep-inside-line = ##t
		\clef bass
		\adagioMolto
		\partial 4 fis4
		g4. a8 b cis d b
		a2. a4
		b c8 cis d e eis fis
		a4 g2 fis4
		f4. e8 d cis d b
		cis2. cis4
		d4. dis8 e fis fisis gis
		b4 a r2
		R1
		b,2 r%		10
		R1
		cis2 a4 b8 cis
		d4. e8 fis g e fis
		g4 g fis b?
		a b8. bes16 a8 g fis4
		g8. fis16 e4 fis8. e16 dis4
		e g8 g, fis4 g
		a8 ais b cis d4 d
		d r r2%		19
		R1*2
		r2 r4 f,
		c' b? r2
		R1
		r2 r4 
		d, a' gis d' c8. d16
		d4. b8 c gis a f
		e4 e' r \clef treble g''? ~
		g g2 g4 ~
		g \clef bass fis,,, e' d8. e16%		30

		\bar "|."
	}
}
