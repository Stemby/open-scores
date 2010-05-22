\version "2.10.14"

\include "defs.ly"

violinoIISndo = \context Voice = vlII {
	\relative c'' {
		\set Staff.midiInstrument = "violin"
		\set Score.skipBars = ##t
		\key fis \minor
		\time 3/8
		\repeat volta 2 {
			r4 a8(\p
			b4) r8
			r4 << bis8( \minHarp {s16\< s\!} >>
			<< cis4) \minHarp {s16\> s\!} >> r8
			r4 a8(
			b?4) r8
			r4 << bis8( \minHarp {s16\< s\!} >>
			<< cis4) \minHarp {s16\> s\!} >> r8
			r4 gis8(
			a4) r8%		10
			r4 eis8(
			fis4) r8
			r4 d8\> ~
			d r dis ~
			dis r b( ~
			b4 a8\!)
		}
		\repeat volta 2 {
			r4 d8( ~
			d4 e8)
			r4 a,8( ~
			a4 a8)%		20
			r4 d8(\pp ~
			d4 e8)
			r4 bes8 ~
			bes r a ~
			a r d ~
			d4 r8
			r4 e8_\crescen ~
			e4 r8
			r4 fis8 ~
			fis4 r8%		30
			r4 gis8 ~
			gis4 r8
			r4 a8(\mf ~
			a4 gis8)
			r4 << c8( ~ \minHarp {s16\< s\!} >>
			<< c4 \minHarp {s16\> s\!} >> b8)
			r4 a8( ~
			a4 gis8)
			r4 << c8( ~ \minHarp {s16\< s\!} >>
			<< c4 \minHarp {s16\> s\!} >> b8)%		40
			r4 b8(
			a4) r8
			r4 gis8(\>
			fis4) r8
			r4 fis8\! ~
			fis r fis ~
			fis r eis(\pp ~
		}
		\alternative {
			{eis4 cis8)}
			{cis\repeatTie r r}
		}
		\repeat volta 2 {
			R4.%		50
			R
			r8\mf cis cis
			cis4 r8
			R4.
			R
			r8 cis\< cis
			cis4\! r8
			R4.
			R
			r8 fis\< fis%		60
			fis4\! r8
			r8 fis fis
			fis4 r8
			r b,\> b
		}
		\alternative {
			{b( a\!) r}
			{b( a) r}
		}
		\repeat volta 2 {
			r fis' fis
			fis(\< a) a
			a( gis) gis\!
			a4 r8%		70
			r d, d
			d(^\unPoRit bes'\>) bes
			bes( e,) e
			e(\! f) r^\aTempo
			R4.
			r8 b,? b
			b( e_\crescen) e
			e( a,) r
			R4.
			r8 dis dis%		80
			dis( gis) gis
			gis4 r8
			r\p <gis fis'>-> <gis fis'>
			<gis fis'>\< <gis fis'> <gis fis'>\!
			<gis fis'>\> <a e'> <a e'>\!
			<a e'> <a e'> <a e'>
			<a e'> <gis eis'>->\< <gis eis'>\!
			<gis eis'>\> <gis fis'> <gis fis'>
			<gis fis'> <a e'?> <a e'>\!
			<a e'> <gis fis'>-> <gis fis'>%		90
			<gis fis'> <a e'> <a e'>
			<a e'> d d%		92
			\textSpannerUp
			d \unPoRitardan <e,? cis'>(-.\startTextSpan <e cis'>-.)
			<e cis'> <d cis'>(-. <d cis'>-.)
			<d cis'> <d b'>(-. <d b'>-.)
			<d b'>( <dis a'>^\do\stopTextSpan) a'%		96
			a[( gis)] b,(
		}
		\alternative {
			{a) r r}
			{a\repeatTie r r}
		}
		\repeat volta 2 {
			\time 2/4
			R2%		100
			R2*3
			b'2\f->%		104
			fis'->
			d8 fis e d
			cis d cis b
			a2 ~
			a
			fis\sf%		110
			b\sf
			fis
			dis
			eis
			fis
		}
		\repeat volta 2 {
			R
			a,\sf
			d8\sf e d b
			a2
			a%		120
			c ~
			c
			f4 r
			dis2
			e
			e8\sf fis dis e
			e2
			fis_\crescen
			gis
			gis8\sf a fisis gis%		130
			gis2
			R2*4
			d'2\sf
			a'\sf
			a8 a gis fis
			e fis e d
			cis2%		140
			cis ~
			cis
			fis,\sf
			b\sf
			<gis, fis'>
			b
		}
		\alternative {
			{a}
			{a4 r\fermata}
		}
		\repeat volta 2 {
			\time 3/8
			\tempo 4.=76
			a'4.(\p
			gis%		150
			a
			gis)
			a(
			gis
			a
			gis)
			r4 eis8( ~
			eis4 fis8)
			d4( cis8) ~
			cis4 cis8%		160
			r4 d8(
			dis4) dis8
			b8.( cis16 b8)
			b4( a8)%		164
		}
		\repeat volta 2 {
			<<
			{<d fis>4._( | <e g> | <d fis> | e)( | fis4^\unPoRit f8)} \\% spostamento manuale legatura (b. 165)
			{s4.*4 | d4.}
			>>
			e%		170
			e4(-. <bes e>8-.)
			<bes e>4(-> <a f'>8)
			a4(^\aTempo dis8)
			e4.
			e4(-._\crescen e8-.)
			e8.( fis16 e8)
			fis4. ~
			fis
			gis4(-. gis8-.)
			gis8.( a16 gis8)%		180
			gis4(-. a8-.)
			a4( gis8)
			a4( dis,8
			d?4 e8)%		184
			\set doubleSlurs = ##t%		ci vorrebbe una legatura di valore
			<e a>4.(
			<e b'>)
			\set doubleSlurs = ##f
			<e a>4\( dis8(%		187
			d?4) e8\)
			eis4.
			eis4( fis8)%		190
			d4.
			d4( cis8)
			d4.(_\dimin
			dis)
			b8.( cis16 b8)
			b4( a8)
		}
		\time 3/4
		\tempo 4=144
		\cadenzaOn
		r4
		\cadenzaOff
		\bar "|"
		\repeat volta 2 {
			r8 a[-._\sempreF cis-. a-.] cis-. r
			r gis[-. cis-. gis-.] cis-. r
			r a[-. d-. a-.] d-. r
			r fis[-. a-. fis-.] a-. r%		200
			r d,[-._\crescen g-. d-.] g-. r
			r dis[-. gis-. dis-.] gis-. r
			r eis[-. gis-. eis-.] gis-. r
		}
		\alternative {
			{r fis[-. a-. fis-.] a-. r}
			{r fis[-. a-. fis-.] a-. r}
		}
		\repeat volta 2 {
			r d,-. fis-. d-. fis-. d-.
			r cis-. e-. cis-. e-. cis-.
			r d-. f-. d-. g-. e-.
			r f[-. a-. f-.] a-. r
			r dis,-. a'-. dis,-. a'4%		210
			r8 e-. gis-. e-. gis4
			r8 eis-. b'-. eis,-. b'4
			r8 fis-. ais-. fis-. ais4
			r8 fis-. <d b'>-. fis-. <d b'>4
			r8 fis-. <cis cis'>-. fis-. <cis cis'>4
			r8  fis-. <d b'>-. g?-. <d b'>4
			r8 fis <b, b'> fis' <b, b'>4
			r8 b-. <c g'>-. b-. <c g'>4
			r8 gis'?-. <cis,? cis'?>-. gis'-. <cis, cis'>4
			r8 b'-. <e, cis'>-. ais-. <e cis'>4%		220
			r8 fis <d b'> b-> a-> b->
			cis\ff\noBeam cis( fis4) <a, fis'>->
			r8 fis'( cis'4) <e, cis'>->
			r8 cis'( fis,4) <a, fis'>->
			r8 fis'( fis'4) <a, fis'>->
			r8 fis( g'4) g,,->
			r8 fis'( gis'?4) gis,,?->
			r8 fis' a fis eis gis
		}
		\alternative {
			{fis4 <a, fis'>4.-> r8}
			{fis'\fz\noBeam fis(\p ais fis dis' cis)}%		230
		}
		cis(\> b ais b gis gisis
		ais fis ais fis b ais)
		ais(\! gis fisis gis dis eis
		fis_\piuP) fis( ais fis dis' cis)
		cis( b ais b gis gisis
		ais fis ais fis b ais)
		ais( gis fisis gis dis eis
		fis cis fis cis fis cis)
		g'(\< es g\! es\> g es\!
		g es g es g es%		240
		g es g es g es
		g es g es g es)
		fis?(_\piuF cis? fis cis fis cis
		fis\< cis fis\! cis\> fis b,\!
		fis' cis fis cis\> gis' eis
		ais fis\! ais fis ais fis)
		g( es g es g es
		g es g es g es
		g\< es g\! es\> bes' f\!
		bes g bes g bes g)%		250
		fis?( cis? fis cis fis cis
		fis\< cis fis\! cis\> fis b,\!
		cis ais cis ais cis gis
		cis ais cis ais cis ais)
		cis(\< a? cis\! a\> cis a\!
		cis ais cis ais cis ais
		cis\< a? cis\! a\> cis a\!
		cis ais cis ais cis ais)%		258
		\textSpannerDown
		\ri r4\startTextSpan r \tar r8\stopTextSpan\startTextSpan cis(\p
		fis4) \dan fis2\stopTextSpan\startTextSpan ~%		260
		fis2._\do\stopTextSpan\fermata
		\bar "|."
	}
}
