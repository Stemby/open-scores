\version "2.12.0"

\include "defs.ly"

violinoISndo = \context Voice = vlI {
	\relative c'' {
		\set Staff.midiInstrument = "violin"
		\set Score.skipBars = ##t
		\key fis \minor
		\time 3/8
		\repeat volta 2 {
			r4 cis8(\p ~
			cis8. d16 cis8)
			r4 << fis8( ~ \minHarp {s16\< s\!} >>
			<< fis4 \minHarp {s16\> s\!} >> eis8)
			r4 cis8( ~
			cis8. d16 cis8)
			r4 << fis8( ~ \minHarp {s16\< s\!} >>
			<< fis4 \minHarp {s16\> s\!} >> eis8)
			r4 d8 ~
			d8. d16( cis8)%		10
			r4 b8 ~
			b8. b16( a8)
			r4 gis8\> ~
			gis r fis ~
			fis r eis( ~
			eis4 fis8\!)
		}
		\repeat volta 2 {
			r4 fis8( ~
			fis4 g8)
			r4 fis8( ~
			fis4 e8)%		20
			r4 fis8(\pp ~
			fis4 g8)
			r4 g8 ~
			g r f ~
			f r a( ~
			a4 b8)
			r4 d8(_\crescen ~
			d4 cis8)
			r4 cis8( ~
			cis4 dis8)%		30
			r4 fis8( ~
			fis4 e8)
			r4 e8(\mf ~
			e8. fis16 e8)
			r4 << a8( ~ \minHarp {s16\< s\!} >>
			<< a4 \minHarp {s16\> s\!} >> gis8)
			r4 e8( ~
			e8. fis16 e8)
			r4 << a8( ~ \minHarp {s16\< s\!} >>
			<< a4 \minHarp {s16\> s\!} >> gis8)%		40
			r4 fis8( ~
			fis8. gis16 fis8)
			e-. r d(\> ~
			d8. e16 d8)
			cis-. r b\! ~
			b r a ~
			a r gis(\pp ~
		}
		\alternative {
			{gis4 fis8)}
			{fis\repeatTie r r}
		}
		\repeat volta 2 {
			R4.%		50
			r8\mf cis cis
			cis(->\< fis) fis
			fis(-> eis\!) r
			R4.
			r8 cis cis
			cis(->\< fis) fis
			fis(-> eis\!) r
			R4.
			r8 fis fis
			fis(\< b) b%		60
			b( cis) cis\!
			cis( fis,) fis
			fis( gis) gis\>
			gis( eis) eis
		}
		\alternative {
			{eis( fis\!) r}
			{eis( fis) r}
		}
		\repeat volta 2 {
			R4.
			r8 a\< a
			a( d) d\!
			d( cis) r%		70
			R4.
			r8^\unPoRit bes\> bes
			bes( e,) e
			e(\! f) r^\aTempo
			r a a
			a( gis) r
			r d'_\crescen d
			d( cis) r
			r cis cis
			cis( bis) r%		80
			r fis' fis
			fis( e) r
			R4.
			r8 b'\p\< b\!
			b\> a a\!
			a r r
			R4.
			r8 b\< b\!
			b\> a a\!
			a r r%		90
			r a(-. a-.)
			a4 r8%		92
			\textSpannerUp
			r \unPoRitardan fis(-.\startTextSpan fis-.)
			fis fis(-. fis-.)
			fis( b,) b
			b( fis'^\do\stopTextSpan) fis%		96
			fis[( cis)] cis
		}
		\alternative {
			{cis_\aTempo r r}
			{cis r r}
		}
		\repeat volta 2 {
			\time 2/4
			R2%		100
			R2*5
			fis2->\f%		106
			b->
			a8 b a gis
			fis gis fis e
			d e d cis%		110
			b cis b a
			gis a gis fis
			eis fis eis dis
			cis d? cis b
			a b a gis
		}
		\repeat volta 2 {
			R2
			R
			d'\sf
			a'8\sf b a g
			f2%		120
			c'8\sf d c bes
			a bes a g
			f2
			a8\sf b? gis? a
			gis2
			d'
			cis
			cis8\sf dis_\crescen bis cis
			bis2
			fis'%		130
			e
			R2*5
			a2\sf ~
			a
			d\sf
			cis8 d cis b%		140
			a b a gis
			fis gis fis e
			d e d cis
			b cis b a
			gis a gis fis
			eis fis dis eis
		}
		\alternative {
			{fis2}
			{fis4 r\fermata}
		}
		\repeat volta 2 {
			\time 3/8
%			\tempo 4.=76
			cis'(-.\p cis8-.)
			cis8.( d16 cis8)%		150
			cis4(\< fis8\!)
			fis4(\> eis8\!)
			cis4(-. cis8-.)
			cis8.( d16 cis8)
			cis4(\< fis8\!)
			fis4(\> eis8\!)
			d4(-. d8-.)
			cis8.( d16 cis8)
			b4(-. b8-.)
			a8.( b16 a8)%		160
			g4(-. g8-.)
			fis4(\< << dis'8\!) \minHarp {s16\> s\!} >>
			fis,4( eis8
			fis4) r8
		}
		\repeat volta 2 {
			R4.
			R
			a4(-. a8-.)
			a8.( b16 a8)
			a4(\<^\unPoRit d8\!)
			d4(\> cis8\!)%		170
			c4(-. c8-.)
			c8.(\< d16 c8\!)
			c4(^\aTempo a'8)
			a4( gis8)
			e,4(_\crescen d'8)
			d4( cis8)
			cis4( cis'8)
			cis4( bis8)
			gis,4( fis'8)
			fis4( e8 ~%		180
			e4) e8 ~
			e4 e8 ~
			e4 e8
			e8.( fis16 e8)
			e4(\< a8\!)
			a4(\> gis8\!)
			e4(-. e8-.)
			e8.(\< fis16 e8\!)
			d4( d'8 ~
			d4 cis8)%		190
			b,4( b'8 ~
			b4 a8)
			g,4(_\dimin d'8)
			fis,4( dis'8)
			r4 eis,8( ~
			eis4 fis8)
		}
		\time 3/4
%		\tempo 4=144
		\cadenzaOn
		r8 cis(_\sempreF
		\cadenzaOff
		\bar "|"
		\repeat volta 2 {
			fis4) fis4.-> fis8(
			cis'4) cis4.-> cis8(
			fis,4) fis4.-> fis8(
			fis'4) fis4.-> fis8(%		200
			g,4) g4.->_\crescen g8(
			fis'4) <gis,? fis'>4.-> fis'8(
			cis4) <eis, cis'>4.-> cis'8(
		}
		\alternative {
			{cis'4) <cis, cis'>4.-> cis,8\laissezVibrer}
			{cis''4\repeatTie <cis, cis'>4.-> r8}
		}
		\repeat volta 2 {
			r fis,[-. a-. fis-.] a-. r
			r e[-. a-. e-.] a-. r
			r f-. a-. f-. c'-. g-.
			r a[-. c-. a-. c-.] a(
			a'4) a4.-> a8(%		210
			gis4) e,4.-> b'8(
			b'4) b4.-> b8(
			ais4) fis,4.-> fis8(
			b4) b4.-> b8(
			fis'4) fis4.-> fis8(
			b,4) b4.-> b8(
			b'4) b4.-> b8(
			c,4) c4.-> c8(
			b'4) <cis,? b'>4.-> b'8(
			fis4) fis4.-> fis8(%		220
			\grace { d,[ d'] } b'4.) d,,8-> cis-> eis->
			fis4\ff <a, fis'>4.-> fis'8(
			cis'4) <e, cis'>4.-> cis'8(
			fis,4) <a, fis'>4.-> fis'8(
			fis'4) <a, fis'>4.-> fis8(
			g'4) g,,4.-> fis'8(
			gis'?4) gis,,?4.-> cis'8(
			cis'4) <cis, cis'>4.-> cis'8(
		}
		\alternative {
			{fis4) <a,, fis''>4.-> r8}
			{fis''4\fz\repeatTie fis2\p ~}%		230
		}
		fis2.\> ~
		fis ~
		fis4\! cis2 ~
		cis4_\piuP fis,2 ~
		fis2. ~
		fis4 cis4. cis,8(
		cis'4) cis4. cis,8(
		fis2.)
		\appoggiatura g8\< << g'2( {s8 s\!\>} >>  es4\!
		bes2 g4) ~%		240
		g( es f
		g2.)
		\appoggiatura fis?8 fis'?2(_\piuF cis4
		ais2 fis4\>) ~
		fis fis( cis')
		cis2\! r4
		es,2(-> g4\<
		bes2 es4
		g2 bes4\!
		g2.)%		250
		fis,?2(\< ais4
		cis?2 fis4
		<< ais2 {s4 s\!} >> cis4)
		ais2.(
		<a,? a'?>_\espressivo
		ais'
		<a,? a'?>_\espressivo)
		<ais ais'>_\dimin ~%		258
		\textSpannerDown
		\ri << <ais ais'> {s2\startTextSpan \tar s4\stopTextSpan\startTextSpan} >>
		r4 \dan r\stopTextSpan\startTextSpan r8 cis(\pp%		260
		fis2._\do\stopTextSpan\fermata)
		\bar "|."
	}
}
