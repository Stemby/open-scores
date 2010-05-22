\version "2.10.14"

\include "defs.ly"

violaPmo = \context Voice = vla {
	\relative c' {
		\set Staff.midiInstrument = "cello"
		\set Score.skipBars = ##t
		\clef alto
		\key a \major
		\time 4/4
		b2.(\p d4
		cis2) r
		d,2.^>\> d8.(\! fis16)
		g4( fis) r2
		fis4( gis?2 a4
		a2) r
		R1^\fermataMarkup%		7
		\repeat volta 2 {
			\time 3/4
			\tempo 2.=60
			b2._\pSempTener
			r4 b-.(\< b-.
			b-. b-. d-.\!)%		10
			d2( cis4)
			b2.\p
			r4 b(-.\< b-.
			b-. b-. d-.\!)
			d8( cis b cis) a4
			R2.*2
			dis4(\< fis a\!
			dis2\sf ~ dis8 cis
			b4) r r%		20
			R2.
			e,4(\< gis b\!
			e2\sf ~ e8 dis
			cis4) r r
			R2.*4
			gis2(\> cis,4\!)
			r8 gis(\<-. bis-. cis-. dis-. e-.\!)%		30
			e2( dis4)
			e,2.\p
			R2.
			r4 cis8^"pizz." r fis r
			b4 r r
			r <g d'?>\f-.^"arco" g-.
			<c, g' e' c'>-. c-. r
			a''2(\sf\> d,4\!)
			r8 a b cis? d e
			f e g f e d%		40
			d c b c g4
			e'2.
			b2 b4
			b b cis?
			cis dis r
			r8 e, r e r e
			r gis r a r ais
			r b r a? r gis
			r fis r e r gis
			r a r gis r fis%		50
			r e r dis r d
			r cis r fis r b
			r e, r fis r gis
			r a r gis' r fis
			r <e b'> r <dis b'> r a'
			r gis r gis r gis
			r gis r gis r gis
			r e r dis r d
			r cis r dis r e
			r <cis e> r e r e%		60
			r dis r dis r dis
			r e r b4 b8
			b  b4 cis fis8
			fis fis4 b, b8
			b b4 b b8
			b cis4 a a8
			a b4 b b8
			b cis4 cis d8
			d e4 e e8
			e e4 e e8%		70
			e e4 fis fis8
			fis e4 e e8
			e e4 e e8
			e e dis fis d f
			cis e c dis b e
			e4 fis2
			fis4 fis2
			fis4 fisis4. gis8
			gis cis bis2
			r4 gis2%		80
			gis4 gis'2
			gis4 gis, fis
			eis2 dis4
			cis2.
			cis4 cis, e8 a
			cis2 b4
			b ais a \bar "||"
			\time 4/4 a gis2 fisis4
			fisis gis2 dis4 \bar "||"
			\time 3/4 e r r%		90
			R2.
			<fis e'>
			r4 a? a
			a8 gis fis gis e4
			e r r
			e r r
			R2.
			fis'
			r8 cis, dis eis fis gis
			a gis b a gis a%		100
			gis4 r r
		}
		b2.
		r4 b b
		b b d
		d2 cis4
		b2 r4
		b2. ~
		b ~
		b
		b2 e,4%		110
		R2.*3
		a2 d,4
		R2.*3
		g2 c,4 ~
		c2 d4
		b'2 e,4 ~%		120
		e2 f4
		<g d'>2.
		R2.*2
		<g e'>2.
		<a e'>
		R2.*2
		<a fis'?>2.
		<b fis'>%		130
		r8 fis gis? ais b cis
		d cis e d cis b
		g'2 e4
		d2 cis?4
		b2 ais4
		g'2.
		d2 b4
		a2 gis?4
		fis'2 eis4
		d'2.%		140
		cis,2 fis,4 ~
		fis2 gis4
		e'2 a,4 ~
		a2 b4
		fis'2 b,4
		d?2.
		r4 d d
		d d d
		c2 b4
		e2.%		150
		fis
		gis ~
		gis4 r r
		r8 a, r a r b
		r cis r d r dis
		r e r d? r cis
		r b r a r cis
		r d r cis r b
		r a r gis r g
		r fis r b r e,%		160
		r a r b r cis
		r d r cis' r b
		r a r gis r d'
		r cis r cis r cis
		r cis r cis r cis
		r a r gis r g
		r fis r gis? r a
		r a r a r a
		r gis r gis r gis
		r a a, cis a d%		170
		a e' a, fis' a, b
		gis b g b g cis
		g d' g, e' g, a
		fis a d a d b
		e cis e d cis e
		cis fis d fis e g
		cis, a' d, a' e a
		fis a d, a' e a
		fis a gis? b gis b
		a a4 a a8 ~%		180
		a a4 a a8 ~
		a a gis4 g
		fis f e
		fis? b2 ~
		b4 b2 ~
		b4 bis4. cis8
		cis fis eis2
		r4 cis2 ~
		cis4 cis fis
		cis2 b4%		190
		gis?2

		\bar "|."
	}
}
