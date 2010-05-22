\version "2.10.14"

\include "defs.ly"

violinoIIPmo = \context Voice = vlII {
	\relative c' {
		\set Staff.midiInstrument = "violin"
		\set Score.skipBars = ##t
		\key a \major
		\time 4/4
		<fis a>2.\p gis4( ~
		gis a) r2
		<b, eis>2.^>\> a4(\!
		g cis) r2
		r gis?4( a)
		fis'( b,) r2
		R1^\fermataMarkup%		7
		\repeat volta 2 {
			\time 3/4
			\tempo 2.=60
			<fis' a>2._\pSempTener
			r4 <fis a>(-.\< <fis a>-.
			<fis a>-. <fis a>-. gis-.\!)%		10
			e2.^\ten
			<fis a>\p
			r4 <fis a>(-.\< <fis a>-.
			<fis a>-. <fis a>-. gis-.\!)
			e2.^\ten
			R
			fis4(\< a cis\!
			fis2\sf ~ fis8 e
			dis4) r r
			R2.%		20
			gis,4(\< b dis\!
			gis2\sf ~ gis8 fis
			e4) r r
			R2.
			cis\sf ~
			cis4(\< e\!\> dis\!
			ais\< cis\!\> b\!)
			b2.
			R
			r4 r ais(%		30
			fis) r r
			gis2(\> cis,4)\!
			r8 gis(-. ais-. bis-. cis-. dis-.)
			e(\< dis fis\! e\> dis cis\!
			b4) r r
			r <g' f'>\f-. g-.
			<g e'>-. c,-. r
			d2._\sforzp
			r4 <d a'>(\<-. <d a'>-.
			<d a'>-. <d a'>-. f-.\!)%		40
			f2( e4)
			<e ais>2.\sf\>
			dis2( fis4\!) ~
			fis b, e( ~
			e dis) r
			r8 <b e>(\p-. r <b e>-. r <b e>-.
			r <b e>\<-. r <cis e>\!\>-. r <cis e>\!-.)
			r dis r <b d> r <b d>
			r <b d>\< r d\!\> r <b d>\!
			r cis r cis r dis%		50
			r e r fis r gis\<
			r eis r fis r fis\!
			r gis\> r a r b\!
			r a r <a cis> r <a dis>
			r <a e'>\< r <a fis'>\!\> r b\!
			r b r <e, b'> r <e cis'>
			r <e dis'>\< r <e e'>\!\> r <e gis>\!
			r fis r fis r <f b>
			r e_\dimin r <c a'> r <b gis'>
			r fis'\< r <fis bis>\!\> r <fis cis'>\!%		60
			r <fis cis'> r fis r <fis a>
			r gis_\markup { \italic "più" \dynamic f }\noBeam gis( e a e
			b'\< e, cis'\!\> e, fis e\!)
			fis( dis fis d gis d
			a'\< d, b'\!\> d, e\! d)
			e( cis e cis fis dis
			gis\< e a fis b gis
			cis eis, a fis d' fis,\!
			b gis e'?\sf a, b d)
			cis( a\< cis a dis a%		70
			e'\! a, fis' a, b a)
			b( gis\< b gis cis gis
			dis'\! gis, e' gis, e gis)
			fis( e fis dis b'_\dimin d,
			e cis a' c, gis' b,)%		75
			<<
			{<cis? fis>4 e2 ~ | e4_\un a?2_\poco ~} \\
			{s8 s\< s4\!\> s\! | s8 s\< s4\!\> s\!}
			>>
			\textSpannerDown
			\ri
			a4\startTextSpan <<
			{fisis4.( gis8) |} \\
			{s8\< s\! s4 |}
			>>
			\te gis8(\stopTextSpan\startTextSpan cis bis2)
			\nu r4\stopTextSpan\startTextSpan bis4.(_\espressivo cis8)%		80
			cis4_\to\stopTextSpan cis2\pp
			cis( bis4
			gis2 fis4)
			e?2.^\aTempo ~
			e2.
			e2( dis4 ~
			dis) cis(-. c-. ~ \bar "||"
			\time 4/4 c) b2(-\dimin ais4 ~
			ais b2 a4) \bar "||"
			\time 3/4 gis r r%		90
			R2.
			ais'\sf
			r4 b,(\p-. b-.)
			b(-. r r
			gis-. r r
			gis-.) r r
			R2.
			<cis e>\pp
			R
			r4 <cis fis>8(-. r dis-.) r%		100
			b4 r r
		}
		<fis' a>2.
		r4 <fis a> <fis a>
		<fis a> <fis a> gis
		e2.
		<fis a>2 r4
		<f a>2. ~
		<f a> ~
		<f a>2 f4
		<b, e>2.%		110
		<ais e'> ~
		<ais e'> ~
		<ais e'>
		<a? d>
		<gis? d'> ~
		<gis d'> ~
		<gis d'>
		c
		<a d>
		e'%		120
		<<
		{e2 f4} \\
		{c2.}
		>>
		<d f>%		122
		R2.*2
		<c e>2.
		<cis? e>
		R2.*2
		<e a>2.
		<dis a'>%		130
		R2.*4
		g2 e4
		d2 cis4
		R2.*2
		d2 b4
		a2 gis?4%		140
		R2.
		d'2 gis,4 ~
		gis2 a4
		fis'2 b,4 ~
		b2 b'4
		<gis b>2.
		r4 <gis b> <gis b>
		<gis b> <gis b> <gis b>
		<dis a'>2.
		<d? b'>%		150
		<d a'>
		<d gis> ~
		<d gis>4 r r
		r8 a' r a r a
		r a r a r a
		r gis r <e g> r <e g>
		r <e g> r <e g> r <e g>
		r <d fis> r <d fis> r <d gis?>
		r <e a> r <e b'> r <e cis>
		r <fis ais> r <fis b> r <g b>%		160
		r <a cis> r <a d> r <a e'>
		r <a d> r <d fis> r <d gis?>
		r <d a'> r <d b'> r e
		r e r <a, e'> r <a fis'>
		r <a gis'> r <a a'> r <a cis>
		r b r b r <bes e>
		r a r <f d'> r <e cis'>
		r b' r <b eis> r <b fis'>
		r <b fis'> r b r <b d>
		r <a cis> cis,[ a' d, a']%		170
		e a fis a fis b
		gis b b, g' cis, g'
		d g e g e g
		fis a a, fis' b, gis'?
		cis, a' d, b' e, cis'
		fis, ais fis b g b
		a cis a d a e'
		a, fis' d fis d gis
		d a' d, b' d, e
		cis e cis e cis fis%		180
		cis gis' cis, a' a, cis
		a b gis b g bes
		fis a f gis? e a
		a4 a2 ~
		a4 d2 ~
		d4 bis 4. cis8
		cis fis eis2
		r4 eis4. fis8
		fis4 fis2
		fis eis4%		190
		cis2 b4
		a2. ~
		a
		a2 gis4 ~
		gis fis f ~\bar "||"
		\time 4/4 f e2 dis4 ~
		dis e2 d4 \bar "||"
		\time 3/4 cis r r
		R2.
		dis'%		200
		r4 e, e
		e r r
		<cis e> r r
		<cis e> r r
		R2.
		<fis a>
		r4 <fis a> <fis a>
		<fis a> <fis a> <d gis>
		e2.
		<fis a>%		210
		<<
		{f'2 e4 | e2 f4 ~ | f2 e4 | e2 f4 ~ | f2 e4 | e2 f4 ~ | f2\stemDown d4 ~ | d2 d4} \\
		{b2. | a | b | a | b | a | s2.*2}
		>>
		<e a>2 d4 ~%		219
		d2 cis4 ~%		220
		cis2 b4 ~
		b2 cis4 ~
		cis2 r4
		cis2 r4
		cis2 r4
		cis2.
		\bar "|."
	}
}
