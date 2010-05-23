\version "2.12.0"

\include "defs.ly"

celloSndo = \context Voice = vlc {
	\relative c {
		\set Staff.midiInstrument = "cello"
		\set Score.skipBars = ##t
		\clef bass
		\key fis \minor
		\time 3/8
		\repeat volta 2 {
			r4 fis8(\p
			eis4) r8
			r4 << fis8( \minHarp {s16\< s\!} >>
			<< cis4) \minHarp {s16\> s\!} >> r8
			r4 fis8(
			eis4) r8
			r4 << fis8( \minHarp {s16\< s\!} >>
			<< cis4) \minHarp {s16\> s\!} >> r8
			r4 b'8(
			a4) r8%		10
			r4 gis8(
			fis4) r8
			r4 b,8\> ~
			b r bis ~
			bis r cis( ~
			cis4 fis,8\!)
		}
		\repeat volta 2 {
			r4 d'8(
			cis4) r8
			r4 d8(
			a4) r8%		20
			r4 d8(\pp
			cis4) r8
			r4 c8 ~
			c r f, ~
			f r f'(
			e4) r8
			r4 gis8(_\crescen
			a4) r8
			r4 a8(
			gis4) r8%		30
			r4 bis8( ~
			bis4 cis8)
			r4 cis8(\mf
			d4 e,8)
			r4 << dis'8( \minHarp {s16\< s\!} >>
			<< e4 \minHarp {s16\> s\!} >> e,8)
			r4 cis'8(
			d4 e,8)
			r4 << dis'8( \minHarp {s16\< s\!} >>
			<< e4 \minHarp {s16\> s\!} >> e,8)%		40
			r4 d'8(
			cis4) r8
			r4 b8(\>
			a4) r8
			r4 b8\! ~
			b r bis, ~
			bis r cis(\pp ~
		}
		\alternative {
			{cis4 fis,8)}
			{fis\noBeam\repeatTie cis'\mf cis}
		}
		\repeat volta 2 {
			cis(-> fis) fis%		50
			fis(-> eis) eis
			eis(->\< fis) fis
			fis(-> cis)\! cis
			cis(-> fis) fis
			fis(-> eis) eis\<
			eis(-> fis) fis
			fis(-> cis)\! cis
			cis( d) d
			d( cis) cis
			cis(\< b) b%		60
			b( a) a\!
			a( b) b
			b( bis) bis\>
			bis( cis) cis
		}
		\alternative {
			{fis,\! cis'[\mf cis]}
			{cis( fis,) r}
		}
		\repeat volta 2 {
			r d'\< d
			d( cis) cis
			cis( d) d\!
			a r r%		70
			r a\p a
			a(^\unPoRit g) g
			g( c,\>) c
			c( f\!) r^\aTempo
			r f' f
			f( e) e
			e( gis?_\crescen) gis
			gis( a) r
			r a a
			a( gis) gis%		80
			gis( bis) bis
			bis( cis) r
			r d->\p d
			d d d
			d cis cis
			cis cis cis
			cis d->\< d\!
			d\> d d
			d cis cis\!
			cis d-> d%		90
			d cis cis
			cis b b%		92
			\textSpannerUp
			b \unPoRitardan ais\startTextSpan ais
			ais b b
			b[ b,] b
			b( bis^\do\stopTextSpan) bis%		96
			bis[( cis)] cis(
		}
		\alternative {
			{fis,) r r}
			{fis\repeatTie r r}
		}
		\repeat volta 2 {
			\time 2/4
			fis'2\f->%		100
			cis'->
			a8 b a gis
			fis gis fis e
			d e d cis
			b cis b a
			gis a gis fis
			eis fis eis cis
			cis2->
			fis->
			b-> ~%		110
			b
			bis\sf
			gis'\sf ~
			gis
			a8 b a gis
		}
		\repeat volta 2 {
			fis\sf g fis d
			cis2
			R
			R
			f'8\sf g f d%		120
			c2
			c8 d c bes
			a bes a g
			f2
			e
			gis
			a8\sf b gis a
			a2_\crescen
			gis
			bis%		130
			cis8\sf dis bis cis
			a2\sf
			e'8\sf fis e d
			cis d cis b
			a b a g
			fis g fis e
			d e d cis
			b cis b a
			gis? a gis fis
			eis2%		140
			fis
			a
			b\sf ~
			b
			bis\sf
			gis'\sf
		}
		\alternative {
			{a8 b a g}
			{fis4 r\fermata}
		}
		\repeat volta 2 {
			\time 3/8
%			\tempo 4.=76
			fis4.(\p
			eis%		150
			fis
			cis)
			fis(
			cis
			fis
			cis)
			b'(
			a
			gis
			fis)%		160
			b,(
			bis
			cis
			fis,4) r8
		}
		\repeat volta 2 {
			d'4.(
			cis
			d
			a)
			d(_\unPoRit
			a%		170
			<< c { s4\< s16 s16\! } >>
			<< f4.) { s4\> s16 s16\! } >>
			f4(-.^\aTempo f8-.)
			e8.( fis?16 e8)
			gis4.(_\crescen
			a)
			a4(-. a8-.)
			gis8.( a16 gis8)
			bis4.(
			cis)%		180
			e4(-. e8-.)
			e8.( fis16 e8)
			e4(\< a8\!)
			a4(\> gis8\!)
			e4(-. e8-.)
			e8.( fis16 e8)
			e4(\< a8\!)
			a4(\> gis8\!) ~
			gis4 gis8
			b4( a8)%		190
			fis4.(
			gis4 a8)
			b,,4(-._\dimin b8-.)
			bis4(-. bis8-.)
			cis4 cis8 ~
			cis4( fis,8)
		}
		\time 3/4
%		\tempo 4=144
		\cadenzaOn
		r4
		\cadenzaOff
		\bar "|"
		\repeat volta 2 {
			fis4._\sempreF fis'8-. a-. fis-.
			e,4. e'8-. gis-. e-.
			d,4. d'8-. fis-. d-.
			cis,4. cis'8-. fis-. cis-.%		200
			<< b4. {s4 s8_\crescen} >> d8-. g-. d-.
			bis,4. dis'8-. gis?-. dis-.
			cis,4. eis'8-. gis-. eis-.
		}
		\alternative {
			{fis,4. fis'8-. cis-. a-.}
			{fis4. r4 a8(\f}
		}
		\repeat volta 2 {
			d4) d4.-> d8(
			a'4) a4.-> a8(
			d,4) d-> c\trill
			f f,2->
			f'4. dis'8 a' dis,%		210
			e,4. e'8 gis? e
			g,4. eis'8 b' eis,
			fis, 4. fis'8[ ais] fis,,(
			b4.->) b'8 d b
			a,4.-> a'8-. cis-. a-.
			g,4.-> g'8-. b-. g-.
			d,4.-> fis'8-. b-. fis-.
			e,4.-> g'8-. c-. g-.
			eis,4.-> gis'?8-. cis-. gis-.
			fis,4.-> fis'8-. ais-. fis-.%		220
			b,4.-> b8-> cis-> cis,->
			fis4.\ff-> cis''8 fis, fis,
			e4.-> cis''8 e, e,
			d4.-> d''8 a d,
			cis,4.-> fis''8 a, cis,
			b4.-> g''8 b, b,
			bis,4.-> gis'''?8 bis, bis,,
			cis cis' cis' cis, cis, cis'
		}
		\alternative {
			{fis,4 <fis cis'>4.-> a8\laissezVibrer}
			{fis4\fz fis2\p ~}%		230
		}
		fis2. ~
		fis
		<fis cis'>
		fis_\piuP ~
		fis ~
		fis(
		cis')(
		fis,)
		es2(\< g4
		bes2 c4\!%		240
		bes2\>) bes4(\!
		es,2.)
		cis?2\(_\piuF fis?4
		ais2 dis4\>
		cis2 cis4(
		fis,2.\!)\)
		g''2(-> es4
		bes2\> g4
		es c bes
		es2.\!)%		250
		fis'2(->\> cis4
		ais fis dis\!
		cis2) cis4(
		fis2) r8 cis,(\p
		fis4) fis4.-> cis8(
		fis4) fis4.-> cis8(
		fis4) fis4.-> cis8(
		fis4) fis2-> ~%		258
		\textSpannerDown
		\ri << fis2. ~ {s2\startTextSpan \tar s4\stopTextSpan\startTextSpan} >>
		<< fis2. ~ {s4 \dan s\stopTextSpan\startTextSpan} >>%		260
		fis2._\do\stopTextSpan\fermata
		\bar "|."
	}
}
