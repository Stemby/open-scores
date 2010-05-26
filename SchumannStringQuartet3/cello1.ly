\version "2.12.0"

\include "defs.ly"

celloPmo = \context Voice = vlc {
	\relative c {
		\set Staff.midiInstrument = #"cello"
		\set Score.skipBars = ##t
		\override Score.PaperColumn #'keep-inside-line = ##t
		\clef bass
		\key a \major
		\time 4/4
		\tempo "Andante espressivo" 4 = 60
		d2.\p( e4)
		eis( fis) r2
		g,2.^>\>( a4\!
		ais2) r2
		b4( e,) ~ e \grace { e8[(\< fis e dis e] } fis8.\> cis16)\!
		d?2 r2
		R1^\fermataMarkup%		7
		\repeat volta 2 {
			\time 3/4
			\tempo "Allegro molto moderato" 2. = 60
			d'2._\pSempTener
			r4 d(\<-. d-.
			d-. d-. e-.\!)%		10
			a,2.^\ten
			d\p
			r4 d(\<-. d-.
			d-. d-. e-.\!)
			a,2.^\ten
			R2.*3 \clef treble
			b''4(\< dis fis\!
			b2\sf ~ b8 a%		20
			gis4) r r
			R2.
			cis,4(\< e gis\!
			cis2\sf ~ cis8 b)
			ais2( ~ ais8 gis)
			fisis2(\sf gis4)
			dis2(\sf ~ dis8 e)
			e2.\p
			R \clef bass
			r4 cis,,8^"pizz." r fis r%		30
			b,4 r r
			R2.
			gis''2(\>^"arco" cis,4)\!
			r8 gis(-. bis-. cis-. dis-. e-.)
			e( dis cis dis b?4)
			r g\f-. g,-.
			c-. c,-. r
			f'2._\sforzp
			r4 f f
			f f g%		40
			c,2.
			c'
			b2 dis,4
			e2 ais,4
			ais b r
			r \clef treble gis''' a
			b cis4. fis,8
			fis 4 fis gis
			a b4. e,8
			e4 e fis%		50
			gis a b
			cis a d?
			b e4. d8
			cis2 r4 \clef bass
			r r8 b,, r dis
			r e r dis r cis
			r bis r cis r b
			r ais r b r gis
			r a? r fis r gis
			r a r ais r ais%		60
			r b r b r b
			r4 e,, fis
			gis a ais
			b a? gis
			fis e gis
			a gis fis
			e dis d
			cis fis b
			e, fis gis
			a a' b%		70
			cis dis b
			e dis cis
			bis cis b
			ais b gis
			a? fis gis
			a ais2
			ais4 bis2
			bis4 cis2
			cis4 dis2
			dis4 e2%		80
			e4 eis2
			gis fis4
			eis2 dis4
			cis dis,4. e8
			e2.
			e
			e \bar "||"
			\time 4/4 e4 e2 cis4
			cis b2. \bar "||"
			\time 3/4 e,4 r r%		90
			R2.
			cis'
			r8 cis b a? gis fis
			e4 r r
			<e b'> r r
			<e b'> r r
			R2.
			a
			R
			r4 fis8 r b r%		100
			e,4 r r
		}
		d'2.
		r4 d d
		d d e
		a,2.
		d2 r4
		<g, d'>2. ~
		<g d'> ~
		<g d'>
		g%		110
		fis? ~
		fis ~
		fis
		f
		<e b'> ~
		<e b'> ~
		<e b'>
		dis2 e4
		f2.
		g%		120
		a
		b
		r8 d, e fis? g a
		b a c b a g
		bes2.
		a
		r8 e fis gis? a b
		cis b d cis b a
		c2.
		b%		130
		r8 fis gis? ais b cis
		d cis e d cis b
		g'2 e4
		d2 cis?4
		R2.
		r8 fis, gis ais b cis
		d2 b4
		a2 gis?4
		R2.
		r8 cis, dis eis fis gis%		140
		a2.
		b
		cis
		d
		dis
		e
		r4 e e
		e e f
		f2 fis4
		gis2.%		150
		a
		b ~
		b4 r r
		r cis d
		e fis4. b,8
		b4 b cis
		d? e4. a,8
		a4 a b
		cis d e
		fis d g%		160
		e a4. g8
		fis2 r4
		r r8 e, r gis
		r a r gis' r fis
		r eis r fis r e
		r dis r e r cis
		r d? r b r cis
		r d r dis r dis
		r e r e r e
		r4 a,, b%		170
		cis d dis
		e d? cis
		b a cis
		d cis b
		a gis g
		fis b e,
		a b cis
		d d' e
		fis gis? e
		a gis fis%		180
		eis fis e
		dis e cis
		d? b cis
		d dis2 ~
		dis4 eis2 ~
		eis4 fis2 ~
		fis4 gis2 ~
		gis4 \clef tenor a2 ~
		a4 ais2 ~
		ais4 cis b%		190
		ais2 gis4
		fis \clef bass gis,4. a8
		a2. ~
		a ~
		a ~ \bar "||"
		\time 4/4 a4 a2 fis4 ~
		fis e2. \bar "||"
		\time 3/4 a,4 r r
		R2.
		fis'2.%		200
		r8 fis e d cis b
		a4 r r
		a r r
		a r r
		R2.
		d2.
		r4 d d
		d d e
		a,2.
		dis%		210
		d?
		cis
		d
		cis
		d%		215
		cis2
		<< { s4 | r r d' ~ | d2 bes4 } \\
		{ d,4 ~ | d2. ~ | d } >>
		e2 eis4 ~
		eis2 fis4 ~%		220
		fis2 gis4 ~
		gis2 a4 ~
		a2 r4
		R2.*2
		e2 a,4
		\bar "|."
	}
}
