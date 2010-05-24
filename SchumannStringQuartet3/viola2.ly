\version "2.12.0"

\include "defs.ly"

violaSndo = \context Voice = vla {
	\relative c' {
		\set Staff.midiInstrument = "cello"
		\set Score.skipBars = ##t
		\override Score.PaperColumn #'keep-inside-line = ##t
		\clef alto
		\key fis \minor
		\time 3/8
		\tempo "Assai agitato" 4. = 136
		\repeat volta 2 {
			\set doubleSlurs = ##t%		ci vorrebbero legature di valore
			r4 <cis a'>8(\p
			<cis gis'>4) r8
			r4 << <cis a'>8( { \minHarp s16\< s\! } >>
			<< <cis gis'>4) { \minHarp s16\> s\! } >> r8
			r4 <cis a'>8(
			<cis gis'>4) r8
			r4 << <cis a'>8( { \minHarp s16\< s\! } >>
			<< <cis gis'>4) { \minHarp s16\> s\! } >> r8
			\set doubleSlurs = ##f
			r4 eis8(
			fis4) r8%		10
			r4 cis8 ~
			cis4 r8
			r4 b8\> ~
			b r a ~
			a r gis( ~
			gis4 a8\!)
		}
		\repeat volta 2 {
			r4 << a8( ~ { \minHarp s16\< s\! } >>
			<< a8. { \minHarp s16\> s\! } >> b16 a8)
			r4 d8(\< ~
			d4\> cis8\!)%		20
			r4 a8(\pp ~
			a8. bes16 a8)
			r4 e'8 ~
			e r f ~
			f r a, ~
			a8. a16( gis?8)
			r4 b8(_\crescen ~
			b4 a8)
			r4 cis8 ~
			cis8. cis16( bis8)%		30
			r4 dis8( ~
			dis4 e8)
			r4 e8\mf ~
			e4 e8
			r4 << e8 ~ { \minHarp s16\< s\! } >>
			<< e4 { \minHarp s16\> s\! } >> e8
			r4 e8 ~
			e4 e8
			r4 << e8 ~ { \minHarp s16\< s\! } >>
			<< e4 { \minHarp s16\> s\! } >> e8%		40
			r4 gis8(
			a4) r8
			r4 eis8(\>
			fis4) r8
			r4 d8\! ~
			d r dis ~
			dis r b(\pp ~
		}
		\alternative {
			{b4 a8)}
			{a\repeatTie r r}
		}
		\repeat volta 2 {
			r\mf a a%		50
			a(-> gis) gis
			gis(->\< a) a
			a(-> gis_)\! r
			r a a
			a(-> gis) gis\<
			gis(-> a) a
			a(-> gis_)\! r
			r b b
			b( cis) cis
			cis(\< d) d%		60
			d( cis) cis\!
			cis( d) d
			d( dis) dis\>
			dis( b) b
		}
		\alternative {
			{b( a\!) r}
			{b(_\markup { \italic "marc." } a) a}
		}
		\repeat volta 2 {
			a(\< d) d
			d( e) e
			e( f) f\!
			e a,[\< a]%		70
			a( bes) bes\!
			bes(^\unPoRit d\>) d
			d( bes) bes
			bes(\! a) a^\aTempo
			a(\< d) d
			d( e\!) r
			r b_\crescen b
			b( cis) cis
			cis(\< fis) fis
			fis( gis\!) r%		80
			r dis dis
			dis( e) e
			e4.\p^\ten ~
			e ~
			e8 e e
			e e e
			e e->\< e\!
			e\> e e
			e e e\!
			e4. ~%		90
			e8 e e
			e eis eis%		92
			\textSpannerUp \unPocoRitardando
			eis fis\startTextSpan fis
			fis fis fis
			fis fis fis
			fis( dis\stopTextSpan) dis%		96
			dis[( eis)] eis(
		}
		\alternative {
			{fis_\aTempo) a,[ a]}
			{fis'\repeatTie r r}
		}
		\repeat volta 2 {
			\time 2/4
			\tempo "L'istesso tempo"
			R2%		100
			R
			cis2\f->
			fis->
			fis8 g fis e
			d e d cis
			b cis b a
			gis a gis eis
			fis gis fis e?
			d e d cis
			R2%		110
			gis'\sf
			dis'\sf
			R
			cis,\sf
			fis\sf
		}
		\repeat volta 2 {
			d\sf
			a'8 b a g
			fis g fis d
			cis2
			d%		120
			e
			f\sf
			c'8\sf d c bes
			a2
			b8\sf cis? ais b
			b2
			a
			cis_\crescen
			dis8\sf e cisis dis
			dis2%		130
			cis8\sf dis bis cis
			a2\sf
			e'\sf ~
			e
			a\sf
			a8 b a g
			fis g fis e
			d e d cis
			b cis b a
			gis2%		140
			a
			cis
			d
			gis,\sf
			dis'\sf
			cis,\sf
		}
		\alternative {
			{fis\sf}
			{fis4 r\fermata}
		}
		\repeat volta 2 {
			\time 3/8
			\tempo "Un poco Adagio" 4. = 76
			R4.
			R%		150
			cis'4(-.\p cis8-.)
			cis8.( d16 cis8)
			cis4(\< fis8\!)
			fis4(\> eis8\!)
			cis4(-. cis8-.)
			cis8.( d16 cis8)
			b4(\< gis'8\!)
			gis4(\> fis8\!)
			fis4( eis8
			fis4 e?8)%		160
			d4.
			gis,?4(-. gis8-.)
			gis8.( a16 gis8)
			gis4( fis8)
		}
		\repeat volta 2 {
			a4(-. a8-.)
			a8.( b16 a8)
			a4(\< d8\!)
			d4(\> cis8\!)
			a4(-.^\unPoRit a8-.)
			a8.( bes16 a8)%		170
			bes4( g'8)
			g4(->\> g8\!)
			a,4.(^\aTempo
			b)
			b4(-._\crescen b8-.)
			b4( cis8)
			cis4.(
			dis)
			dis4(-. dis8-.)
			dis4( e8)%		180
			cis4.(
			d?
			cis4 c8
			b4 d8)
			cis?4.(
			d
			cis4 c8
			b4 d8)
			d4( b8
			gis4 a8)%		190
			b4( gis8
			eis4 fis8)
			d'4(-._\dimin d8-.)
			gis,?4(-. gis8-.)
			gis8.( a16 gis8)
			gis4( fis8)
		}
		\time 3/4
		\tempo "Tempo risoluto" 4 = 144
		\cadenzaOn
		r4
		\cadenzaOff
		\bar "|"
		\repeat volta 2 {
			r8 fis-._\sempreF a-. fis-. a-. fis-.
			r e-. gis-. e-. gis-. e-.
			r fis-. a-. fis-. a-. fis-.
			r a-. cis-. a-. cis-. a-.%		200
			r g-._\crescen d'-. g,-. d'-. g,-.
			r gis? dis' gis, dis' gis,
			r b-. cis-. b-. cis-. b-.
		}
		\alternative {
			{r a[-. cis-. a-.] cis-. r}
			{r a[-. cis-. a-.] cis-. r}
		}
		\repeat volta 2 {
			r4 r8 a-. d-. a-.
			a'4 r8 a,-. e'-. a,-.
			a'-. a,-. d-. a-. e'-. c-.
			r c[-. f-. c-.] f-. r
			r a,-. dis-. a-. dis-. a-.%		210
			r b-. e-. b-. e-. b-.
			r b-. eis-. b-. eis-. b-.
			r cis-. fis-. cis-. fis-. fis,-.
			r fis( b4) b-> ~
			b8\noBeam b( fis'4) fis-> ~
			fis8\noBeam fis( b,4) b-> ~
			b8\noBeam b( b'4) b-> ~
			b8\noBeam b( c,4) c-> ~
			c8\noBeam c( b'4) <cis, b'> ~
			<cis b'>8\noBeam b'( fis4) fis-> ~%		220
			fis8[ fis b] fis,-> fis-> gis->
			a\ff cis fis cis fis fis,
			r cis' gis' cis, gis' gis,
			r fis a fis d' d,
			r a' cis a fis' fis,
			r g d' d, g' d,
			r gis? dis' dis, gis'? dis,
			r a' cis a gis b
		}
		\alternative {
			{a4 <fis a>4.-> r8}
			{ais\fz ais[(\p cis ais fis' e)]}%		230
		}
		e(\> dis cis dis b bis
		cis ais cis ais dis cis)
		cis(\! b ais b fis gis
		ais)_\piuP ais[( cis ais fis' e)]
		e( dis cis dis b bis
		cis ais cis ais dis cis)
		cis( b ais b fis gis
		ais fis ais fis ais fis)
		ais(\< g ais\! g\> ais g\!
		bes g bes g bes g%		240
		bes g bes g bes f
		bes g bes g bes g)
		ais(_\piuF fis? ais fis ais fis
		ais\< fis ais\! fis\> b fis\!
		ais fis ais fis\> cis' gis
		cis ais\! cis ais cis ais)
		es'( bes es bes es bes
		es bes es bes es bes
		es\< bes es\! c\> f d\!
		g es g es g es)%		250
		cis?( ais cis ais cis ais
		ais\< fis ais\! fis\> b fis\!
		ais fis ais fis gis eis
		fis cis fis cis fis cis)
		fis(\< cis fis\! cis\> fis cis\!
		fis cis fis cis fis cis
		fis\< cis fis\! cis\> fis cis\!)
		r4 r r8 cis(\p%		258
		% SIMPLER TEXT SPANNER THAN IN THE ORIGINAL
		\textSpannerDown \ritardando
		fis4)\startTextSpan fis2 ~
		fis2.%		260
		<cis ais'>2.\stopTextSpan\fermata
		\bar "|."
	}
}
