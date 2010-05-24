\version "2.12.0"

\include "defs.ly"

celloPmo = \context Voice = vlc {
	\relative c {
		\set Staff.midiInstrument = "cello"
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
			r4 fis8 r b r%			100
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
		g%					110

		\bar "|."
	}
}
