\version "2.12.0"

\include "defs.ly"

violaTzo = \context Voice = vla {
	\relative c {
		\set Staff.midiInstrument = #"viola"
		\set Score.skipBars = ##t
		\override Score.PaperColumn #'keep-inside-line = ##t
		\clef alto
		\adagioMolto
		\partial 4 <d a'>4
		<d a'> ~ <d g>8 g fis a4 <d, g>8
		<< { a'2. } \\ { d,4 cis c } >> <c c'> 
		<e b'> a8 g fis g gis a
		g?2 <g d'>4 a
		a gis8 a ~ a a4 <d, d'>8
		<cis cis'>2. <eis eis'>8. <fis fis'>16
		<fis fis'>8 a b bis cis d4 b8
		a2 a4 b8. c16
		a'4. g?8 fis4. e8
		e4 dis b cis8. d16%		10
		b'4. a8 gis4. fis8
		fis4 eis e4. a8
		a4. a8 ~ a g g, d'
		d4. bes'8 a4 d,8 g
		fis4 d e d?8 c
		e d c8. b16 d8 c b8. a16
		c8 b ~ b16 dis, e8 ~ e d4 d8
		d g fis e fis4 fis
		fis r r2
		r4 f bes2%		20
		r4 f bes2
		r4 f ~ f8 f4 f8
		f4 d g f
		r d g f
		r f a4. f8
		f4 e2 e8. a16
		a4. d8 e d c a
		c4 b e, fis?8. g?16
		e'4.d8 c4. b8
		b4 ais2 fis8. b16%		30

		\bar "|."
	}
}
