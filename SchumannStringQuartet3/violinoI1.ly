\version "2.10.14"

\include "defs.ly"

violinoIPmo = \context Voice = vlI {
	\relative c'' {
		\set Staff.midiInstrument = "violin"
		\set Score.skipBars = ##t
		\key a \major
		\time 4/4
		fis(\p b,) ~ b\< \grace { b8[( cis b ais b] } d8.\> b16
		a?2)\! r
		b4( eis,) ~ eis \grace { eis8[( fis eis\< dis eis] } fis8.\> d16
		cis2)\! r
		d2.( cis4
		b2) r
		fis''4(\pp b,)\fermata r2\fermata%		7
		\repeat volta 2 {
			\time 3/4
			\tempo 2.=60
			fis'(\>_\pSempTener b,4)\!
			r8 fis8(-. gis-. ais-. b-. cis)-.
			d( cis e d cis b)%		10
			b( a gis a e4)
			fis'2(\> b,4)\!
			r8 fis(-. gis-. ais-. b-. cis-.)
			d( cis e d cis b)
			a2.^\ten
			a4(\< cis e\!
			a2\sf ~ a8 gis
			fis4) r r
			R2.
			b,4(\< dis fis\!%		20
			b2\sf ~ b8 a
			gis4) r r
			R2.
			cis,4(\< e gis
			cis-. dis-. e-.\!)
			ais,2\sf( ~ ais8 b)
			fisis2\sf( ~ fisis8 gis)
			gis2(\> cis,4\!)
			r8 gis(-. ais-. bis-. cis-. dis-.)
			e(\< dis fis\! e\> dis cis\!)%		30
			cis( b ais b fis4)
			<b, gis'>2.
			R2.
			r4 r ais'(\p
			b) r r
			r <g d'? b'>\f-. g-.
			<g e' c'>-. c,-. r
			c'2._\sforzp
			r4 <a c>(\<-. <a c>-.
			<a c>-. <a c>-. b-.\!)%		40
			c2.
			e2(\sf\> ais,4
			b2 a?4\! ~
			a) gis g( ~
			g fis) r
			r8 gis?(\p-. r gis-. r a-.
			r b-.\< r cis\!\>-. r fis,-.\!)
			r fis r fis r gis
			r a\< r <e b'>\!\> r e\!
			r e r <a, e'> r <a fis'>%		50
			r <b gis'> r <b a'> r <b b'>\<
			r <cis cis'> r <cis a'> r <d? d'?>\!
			r <e b'>\> r <e e'> r <e d'>\!
			r <e cis'>_\markup { \italic "espressivo" } cis'4( dis
			e\< fis4.\!\> b,8\!)
			b4 b( cis
			dis\< e4.\!\> gis,8\!)
			fis4 fis( b
			e,_\dimin a gis
			fis\< bis4.\!\> cis8\!)%		60
			cis4( fis, a 
			gis) gis(_\markup { \italic "più" \dynamic f } a
			b\< cis4.\!\> fis,8\!)
			fis4 fis( gis
			a\< b4.\!\> e,8\!)
			e4 e( fis
			gis\< a b
			cis a d\!
			b e4.\sf d8
			cis4) cis(\< dis%		70
			e\! fis4. b,8)
			b4 b(\< cis
			dis\! e4. gis,8
			fis4) fis( b_\dimin
			e, a gis
			fis\< bis4.\!\> cis8\!)
			cis4\<_\un cisis4.(\!\>_\poco dis8\!)
			\textSpannerDown
			\ri dis(\startTextSpan fis e2) ~
			\te e4\stopTextSpan\startTextSpan eis4.(\< fis8\!)
			\nu fis(\stopTextSpan\startTextSpan a) gis2 ~%		80
			gis4_\to\stopTextSpan cis(\pp gis
			eis2 dis4
			cis2 b?4)
			a2.^\aTempo ~
			a4(\< e'\!\> cis\!
			a2 gis4) ~
			gis fis(-. dis-.) ~ \bar "||"
			\time 4/4 dis e2._\dimin ~
			e4 r r r8 e\pp \bar "||"
			\time 3/4 e2( b8. gis'16)%		90
			gis8( e16 b') b8(\< gis16 e') e8( b16 gis'\!)
			gis2(\sf fis4)
			r dis,(\p-. dis-.)
			e(-. r r
			e-. r r
			e-.) r r
			r dis8(\pp-. e-. gis-. b-.)
			cis2( fis,4)
			r8 cis(-. dis-. eis-. fis-. gis-.)
			a( gis b a gis fis)%		100
			e4 r r
		}
		fis'2 b,4
		r8 fis8 gis ais b cis
		d cis e d cis b
		b a gis a e4
		fis'2 b,4
		f'2 b,4
		d2 f,4
		a2 f4
		R2.%		110
		e'2 ais,4
		cis?2 e,4
		g2 e4
		R2.
		d'2 gis,?4
		b2 d,4
		f2 d4
		R2.
		a'2 d,4
		d2 e4%		120
		c'2 f,4
		\acciaccatura { g,16[ f'] } d'2 g,4
		R2.*2
		e'2 g,4
		\acciaccatura { cis,?16[ a'] } e'2 a,4
		R2.*2
		fis'?2 a,4
		\acciaccatura { dis,16[ b'] } fis'2 b,4%		130
		R2.*3
		g'2 e4
		d2 cis4
		b2 ais4
		R2.
		d2 b4
		a2 gis?4
		fis2 eis4%		140
		R2.
		d'2 gis,4
		R2.
		fis'2 b,4
		R2.
		fis'2 b,4
		r8 fisis gis a b cis
		d cis e d cis b
		b a gis a gis' fis
		fis2 b,4%		150
		\grace a8 a'2 fis4
		e2 d4 ~
		d r r
		r8 cis r cis r d
		r e r fis r b,
		r b r b r cis
		r d r e r a,
		r a r a r b
		r cis r d r e
		r fis r d r g%		160
		r e r a r g
		r fis ~ fis4 gis?
		a b4. e,8
		e4 e fis
		gis a4. cis,8
		b4 b e
		a, d cis
		b eis4. fis8
		fis4 b, d
		cis cis d%		170
		e fis4. b,8
		b4 b cis
		d e4. a,8
		a4 a b
		cis d e
		fis d g
		e a4. g8
		fis4 fis gis?
		a b4. e,8
		e4 e fis%		180
		gis a4. cis,8
		b4 b e
		a, d cis
		b eis4. fis8
		fis4 fisis4. gis8
		gis b a2
		a4 ais4. b8
		b d cis2 ~
		cis4 fis cis
		ais2 gis4%		190
		fis2 e?4
		d?2. ~
		d4 a' fis
		d2 cis4 ~
		cis b gis ~ \bar "||"
		\time 4/4 gis a2. ~
		a4 r r r8 a \bar "||"
		\time 3/4 a2 e8. cis'16
		cis8 a16 e' e8 cis16 a' a8 e16 cis'
		cis2 b4%		200
		r gis, gis
		a r r
		a r r
		a r r
		r gis8 a cis e
		fis2 b,4
		r8 fis gis ais b cis
		d cis e d cis b
		b a gis a e4
		fis'2 b,4%		210
		b'2 e,4
		\grace e8 e'2 a,4
		r r b
		\grace e,8 e'2 a,4
		r r b
		\grace e,8 e'2 a,4 ~
		a2 f4 ~
		f2 bes,4
		e2 gis,4 ~
		gis2 a4 ~%		220
		a2 e4 ~
		e2 e4 ~
		e2 r4
		e2 r4
		e2 r4
		e2.
		\bar "|."
	}
}
