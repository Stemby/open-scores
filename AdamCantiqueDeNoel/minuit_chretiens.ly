\version "2.12.0"

\header {
  title = "Cantique de Noël"
  subtitle = "avec Acc.t d'Orgue Mélodium ad libitum"
  subsubtitle ="mis en musique et composé expressément pour madame Emily Laurey"
  composer = "Adolphe Adam (1803-1856)"
  poet = "Placide Cappeau (1808-1877)"
  %instrument = "Voix et Piano"
  date = "december 1847"
  source = "Alex Grus ainé, 1855c"
  copyright = "Public Domain"
  enteredby = "Carlo Stemberger"
  maintainer = "Carlo Stemberger"
  maintainerEmail = "carlo.stemberger@gmail.com"
  lastupdated = "2010-11-12"
  
  mutopiacomposer = "AdamA"
  mutopiainstrument = "Voice and Piano or Organ or Harmonium"
  style = "Hymn"
  license = "Public Domain"
  
  footer = "Mutopia-2005/12/09-640"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain }}}}
}

%cresc = \markup { \italic "cresc." }
%dim = \markup { \italic "dim." }

global = {
  \key es \major
  \time 4/4
  \compressFullBarRests
}

zza = \times 2/3 { g8[( es' bes g' es bes)] }
zzb = \times 2/3 { as8[( es' c as' es c)] }
zzc = \times 2/3 { as8[( d bes f' d bes)] }
zzd = \times 2/3 { g8[( cis bes g' cis, bes)] }
zze = \times 2/3 { g8[( d' bes g' d bes)] }
zzf = \times 2/3 { a8[( d c fis d c)] }
zzg = << { \stemDown g2 } \\ \times 2/3 { \override TupletNumber #'stencil = ##f \stemUp g8[( es' c g' es c)] } >>
zzi = << { \stemDown as2 } \\ \times 2/3 { \stemUp as8[( f' c as' f c)] } >>
zzj = << { \stemDown g2 } \\ \times 2/3 { \stemUp g8[( d' bes g' d bes)] } >>
zzl = << { \stemDown as2 } \\ \times 2/3 { \stemUp as8[( d bes f' d bes)] } >>
zzm = << { \stemDown bes2 } \\ \times 2/3 { \stemUp bes8[( g' es bes' g es)] } >>
zzn = << { \stemDown g2 } \\ \times 2/3 { \stemUp g8[( es' bes g' es bes)] } >>
zzo = << { \stemDown f2 } \\ \times 2/3 { \stemUp f8[( d' bes f' d bes)] } >>
zzp = << { \stemDown as,2 } \\ \times 2/3 { \stemUp as8[( es' c as' es c)] } >>
zzq = << { \stemDown as,2 } \\ \times 2/3 { \stemUp as8[( f' c as' f c)] } >>
zzr = << { \stemDown g2 } \\ \times 2/3 { \stemUp g8[( g' es bes' g es)] } >>

stanzaI = \relative c'' {
  \set Staff.midiInstrument = #"voice oohs"
  \clef treble
  \global
  \tempo "Andante maestoso"
  \autoBeamOff
  | R1
  | r4 r8. g16 g4 ~ g8. bes16
  | bes4 ~ bes8. bes16 c8. c16 as8. c16
  | es2 bes8 r16 bes g8. f16
  | es4 g8. as16 bes4 as8. f16 % FIXME
  %  | << {\autoBeamOff es4 g8. as16 bes4 as8. f16 } \\ {\autoBeamOff es4 d8. c16 bes4 c8. d16 } >>
  | es2 r
  | r g4 g8. g16
  | bes4 ~ bes8. bes16 c8. c16 as8. c16
  | es2 bes8 r16 bes a8. g16
  
  % 10
  | d'4 bes8. c16 d4 \acciaccatura f8 es8. d16
  | g,2 r4 r8. bes16^\pp
  | bes4 c f, bes
  | c8. bes16 es8. g,16 c4 bes8 r16 bes
  | bes4 c f, bes
  | c8. bes16 es8. g,16 bes4 ~ bes8 r8
  | es2^\f ~ es4 d8. c16
  | d2 ~ d4 ~ d8 r16 d
  | f2 ~ f8. c16 c8. c16
  | es2 es4 r8. es16
  
  %20
  | g2( f4..) bes,16
  | es2 ~ es4( d8.) c16
  | bes2 ~ bes8. bes16 \acciaccatura d8 c8. bes16
  | bes2. r8. es16
  | f2 ~ f4.. bes,16
  | g'2 ~ g4 f4
  | es2
  \once \override TextScript #'avoid-slur = #'inside
  \once \override TextScript #'outside-staff-priority = ##f
  d4^\markup \tiny \override #'(baseline-skip . 1) {
    \halign #-3 %-4
    \musicglyph #"scripts.turn"
  } es8. f16
  | es2 r
  \tag #'choir {
    | R1*12
  }
  \tag #'piano {
    | R1*5
  }
  \bar "|."
}

stanzaII = \relative c'' {
  \set Staff.midiInstrument = #"voice oohs"
  \clef treble
  \global
  \autoBeamOff
  | r2 g4 g8. g16
  | bes4 ~ bes8. bes16 c8. c16 as8. c16
  | es2 bes8 r16 bes g8. f16
  | es4 g8. as16 bes4 c8. d16
  | es2 r
  | r g,4 g8. g16
  | bes4 bes8. bes16 c4 as8. c16
  | es2 bes8. bes16 a8. g16
  | d'8. es16 d4 ~ d8. d16 \acciaccatura f8 es8. d16
  
  % 10
  | g2 ~ g4 r8. bes,16^\pp
  | bes4 c f, bes
  | c8. bes16 es8. g,16 c4 bes8 r16 bes
  | bes4 c f, bes
  | c8. bes16 es8. g,16 bes4 ~ bes8 r8 
  | es2.^\ff d8. c16 
  | d2. d8. d16
  | f2. c8. c16 
  | es2 es4 r8. es16
  | g2( f4) r8 bes,
  
  % 20
  | es2. d8[ c]
  | bes2 ~ bes8. bes16 \acciaccatura d8 c8. bes16
  | bes2. r8. es16
  | f2. bes,4
  | g'2 ~ g4 f4
  | es2 d4 \grace { es16[ d c d] } es8 f
  | es2 r
  \bar "|."
}

stanzaIII = \relative c'' {
  \set Staff.midiInstrument = #"voice oohs"
  \clef treble
  \global
  \autoBeamOff
  | r2 g4 g8. g16
  | bes4 bes8. bes16 c4 as8. c16
  | es2 bes8. bes16 g8. f16
  | es4 g8. as16 bes4 c8. d16 % FIXME
  | es1 % FIXME
  | r2 g,4 g8. g16
  | bes4 bes8. bes16 c4 as8. c16
  | es2 bes8. bes16 a8. g16
  | d'4. d,8 d d  \acciaccatura f es8. d16 % FIXME
  
  % 10
  | g2 r4 r8 bes8^\pp % FIXME
  | bes4 c f, bes
  | c8. bes16 es8. g,16 c4 bes8 r16 bes
  | bes4 c f, bes
  | c8. bes16 es8. g,16 bes4 ~ bes8 r8 % no tie in the original
  | es2.^\ff d8. c16
  | d1
  | f2 c8. c16 c8. c16
  | es2 es4 r8. es16
  | g2( f4..) bes,16
  
  % 20
  | es2. d8[ c]
  | bes2 ~ bes8. bes16 \acciaccatura d8 c8. bes16
  | bes2. r8. es16
  | f2 ~ f4.. bes,16
  | bes'2 ~ bes8[ as g] f
  | es2 d4\trill\fermata \grace { c16[ d] } es8. f16
  | es2 r
  \bar "|."
}

melodyTextI = \lyricmode {
  Mi -- nuit, __ Chré -- tien, __ c'est l'heu -- re so -- lem -- nel -- le, % or "Chrétiens"? or "solennelle"?
  Où l'hom -- me Dieu des -- cen -- dit jus -- qu'à nous
  Pour ef -- fa -- cer __ la ta -- che~o -- ri -- gi -- nel -- le
  Et de son père ar -- rê -- ter le cour -- roux.
  Le monde en -- tier tres -- sail -- le d'es -- pé -- ran -- ce
  À cet -- te nuit qui lui don -- ne~un Sau -- veur. __ % or "En cette nuit"?
  Peu -- ple~à ge -- noux, __ at -- tends __ ta dé -- li -- vran -- ce.
  No -- ël, __ No -- ël, __ voi -- ci __ le Ré -- demp -- teur,
  No -- ël, __ No -- ël, __ voi -- ci le Ré -- demp -- "teur !"
}

melodyTextII = \lyricmode {
  De no -- tre foi __ que la lu -- mière ar -- den -- te
  Nous gui -- de tous au ber -- ceau de l'en -- fant,
  Comme au -- tre -- fois une é -- toi -- le bril -- lan -- te % in the original: "autre fois"
  y con -- dui -- sit les chefs de l'o -- ri -- ent. __
  Le Roi des Rois naît dans une hum -- ble crè -- "che :"
  Puis -- sants du jour, fiers de vo -- tre gran -- deur, % in the original: "puissans"
  À votre or -- gueil, c'est de là qu'un Dieu prê -- che.
  Cour -- bez __ vos fronts de __ vant __ le Ré -- demp -- teur.
  Cour -- bez vos fronts __ de -- vant le Ré -- demp -- teur.
}

melodyTextIII = \lyricmode {
  Le Ré -- demp -- teur a bri -- sé tou -- te~en -- tra -- "ve :"
  La terre est libre, et le ciel est ou -- vert.
  Il voit un frè -- re~où n'é -- tait qu'un es -- cla -- ve,
  L'a -- mour u -- nit ceux qu'en  -- chaî -- nait le fer.
  Qui lui di -- ra no -- tre re -- con -- nais -- san -- ce,
  C'est pour nous tous qu'il naît, qu'il souffre et meurt.
  Peu -- ple de -- "bout !" Chan -- te ta dé -- li -- vran -- ce,
  No -- ël, __ No -- ël, chan -- tons le Ré -- demp -- teur,
  No -- ël, __ No -- ël, __ chan -- tons le Ré -- demp -- teur !
}

upper = \relative c' {
  %\set Staff.midiInstrument = #"church organ"
  \override Staff.NoteCollision  #'merge-differently-headed = ##t
  \clef treble
  \global
  %1
  \zza \zza
  \mark \markup { \musicglyph #"scripts.segno" }
  %2
  \override TupletNumber #'stencil = ##f
  %  \unfoldRepeats {
  % \repeat volta 2 {
  \zza \zza
  %3
  \zza \zzb
  %4
  \zza \zza
  %5
  \zza \zzc
  %6
  \repeat unfold 2 {
    \zza \zza
  }
  %8
  \zza \zzb
  %9
  \zza \zzd
  %10
  \zze \zzf
  %11
  \zze \times 2/3 { g8[(\pp d' bes g' d bes)] }
  %12
  \zzc \zzc
  %13
  \zza \zza 
  %14
  \zzc \zzc
  %15
  \zza \zza
  \tag #'choir {
    %16
    << { \stemDown g2 } \\ \times 2/3 { \stemUp g8[( es' c g' es c)] } >> \zzg
    %17
    \zzj \zzj
    %18 
    \zzi \zzi
    %19
    \zzg \zzg
    %20
    \zzn \zzo
    %21
    \zzm \zzp
    %22 
    \zzn \zzl 
    %23
    << { \stemDown g2^\markup{\italic {cresc.}} } \\ \times 2/3 {\stemUp g8[( es' bes g' es bes)] } >> \zzn
    %24
    \zzo \zzo
    %25
    \zzm \zzq
    %26
    \zzn <as bes d f>4 r
    % similar to 15
    \zzn \zzr % FIXME octava down, after this
    % similar to 16
    << { \stemDown g,2 } \\ \times 2/3 { \stemUp g8[( es' c g' es c)] } >> \zzg
  }
  \tag #'noChoir {
    %16
    << { \stemDown g2 } \\ \times 2/3 { \stemUp g8[( es' c g' es c)] } >> \zzg
  }
  %17
  \zzj \zzj
  %18 
  \zzi \zzi
  %19
  \zzg \zzg
  %20
  \zzn \zzo
  %21
  \zzm \zzp
  %22 
  \zzn \zzl 
  %23
  << { \stemDown g2^\markup{\italic {cresc.}} } \\ \times 2/3 {\stemUp g8[( es' bes g' es bes)] } >> \zzn
  %24
  \zzo \zzo
  %25
  \zzm \zzq
  %26
  \zzn <as bes d f>4 r
  %27
  <g bes es> r <es' bes' es> ~ <es bes' es>8. <es bes' d>16
  %28
  <es as d>2 <f as c>4 <f as c>8. <f as c>16
  %29
  <as bes f' as>2 <g bes es g>4 <as c f>4
  %30
  <g bes es>2 << { \stemDown as2 } \\ { \grace { \stemUp c16[ d es] } \stemUp d4.^\trill es16 f } >>
  %31 
  << \stemDown g,2 \\ \stemUp es'2 >> r
  \bar "||"
  %32
  R1
}

lower = \relative c, {
  %\set Staff.midiInstrument = #"church organ"
  \override TupletNumber #'stencil = ##f
  \clef bass
  \global
  %1
  <es bes' es>1^\mf
  %2
  %  \unfoldRepeats {
  %   \repeat volta 2 {
  <es bes' es>
  %3
  <es bes' es>2 <as es'>
  %4
  <es bes' es> <g es'>
  %5
  <bes, bes'>1
  %6
  <es bes' es>
  %7
  <es bes' es>
  %8
  <es bes' es>2 <as es'>
  %9
  <es bes' es> <es es'>
  %10
  <d d'> <d d'>
  %11
  g r
  %12
  << { d'4( bes d bes) } \\ d,1 >>
  %13
  << { es'4( bes es bes) } \\ es,1 >>
  %14
  << { d'4( bes d bes) } \\ d,1 >>
  %15
  << { es'4( bes es) r } \\ { es,2 ~ es4 s4 } >> % FIXME (rest position)
  \tag #'choir {
    %16
    \appoggiatura { c16[^\f g'] } <c, c'>1
    %17
    \appoggiatura { g16[ d'] } <g, g'>1
    %18
    \appoggiatura { f16[ c'] } <f, f'>1
    %19
    \appoggiatura { c'16[ g'] } <c, c'>1
    %20
    <bes bes'>2 <as as'>
    %21
    <g g'> <as as'>
    %22
    <bes bes'> <bes bes'>
    %23
    %\dynamicDown
    <es, es'>4\accent <g g'>\accent <bes bes'>\accent <es es'>\accent
    %24
    <bes bes'>2 <as as'>
    %25
    <g g'> <as as'>
    %26
    <bes bes'> <bes bes'>4^\markup{\italic{rall.}} r
    % similar to 15
    << { es'2 es4 d } \\ { es,2 s2 } >>
  }
  %16
  \appoggiatura { c16[^\f g'] } <c, c'>1
  %17
  \appoggiatura { g16[ d'] } <g, g'>1
  %18
  \appoggiatura { f16[ c'] } <f, f'>1
  %19
  \appoggiatura { c'16[ g'] } <c, c'>1
  %20
  <bes bes'>2 <as as'>
  %21
  <g g'> <as as'>
  %22
  <bes bes'> <bes bes'>
  %23
  %\dynamicDown
  <es, es'>4\accent <g g'>\accent <bes bes'>\accent <es es'>\accent
  %24
  <bes bes'>2 <as as'>
  %25
  <g g'> <as as'>
  %26
  <bes bes'> <bes bes'>4^\markup{\italic{rall.}} r
  %27
  \override Staff.NoteCollision  #'merge-differently-headed = ##t
  \times 2/3 { es8[( g bes es g es)] }
  <<
    { \stemDown g,2 } \\
    \times 2/3 { \override TupletNumber #'stencil = ##f \stemUp g8[( bes es g es bes)] }
  >>
  %28
  << { \stemDown as2 } \\ \times 2/3 {\stemUp as8[( c es as es c)] } >> 
  << { \stemDown f,2 } \\ \times 2/3 {\stemUp f8[( as c f c as)] } >>
  %29 
  << { \stemDown d,2 } \\ \times 2/3 {\stemUp d8[ f bes d bes f] } >> 
  << { \stemDown es4 } \\ \times 2/3 {\stemUp es8 bes' es } >> 
  << { \stemDown as,,4 } \\ \times 2/3 {\stemUp  as8 f' as } >>
  %30
  << { \stemDown bes,2 } \\ \times 2/3 {\stemUp bes8[( es g bes g es)] } >> 
  << { \stemDown bes2 } \\ \times 2/3 {\stemUp bes8[( f' as bes as f)] } >>
  %31
  \times 2/3 { es8[( g bes es g bes)] }
  \times 2/3 { es[( bes g es bes g\segno)] }
  %62
  es1
}

sopranos = \relative c'' {
  \set Staff.midiInstrument = #"choir aahs"
  \clef treble
  \global
  % \tempo "Andante maestoso"
  \autoBeamOff
  | R1*16
  | g2 g4 g
  | as2. r8. as16
  | g4. g8 g4 g
  
  % 20
  | bes2 bes4 \breathe bes
  | bes( es,2) f4
  | g es as f
  | g2 r
  | r4 f bes d
  | es( bes2) as4
  | g2 as4 as8. as16
  | g2 r
  
  | es'2^\f ~ es4 d8. c16
  | d2 ~ d4 r8. d16
  
  % 30
  | f2 ~ f8. c16 c8. c16
  | es2 es4 r8. es16
  | g2( f4..) bes,16
  | es2 ~ es4( d8.) c16
  | bes2 ~ bes8. \breathe bes16 \acciaccatura d8 c8. bes16
  | bes2. r8. es16
  | f2 ~ f4.. bes,16
  | g'2 ~ g4 \breathe f4
  | es2 d4 es8. f16
  | es2 r
  | R1*5
  \bar "|."
}

contraltos = \relative c' {
  \set Staff.midiInstrument = #"choir aahs"
  \clef treble
  \global
  % \tempo "Andante maestoso"
  \autoBeamOff
  | R1*16
  | d2 d4 d
  | f2. r8. f16
  | es4. es8 es4 es
  
  % 20
  | es2 d4 \breathe d
  | es2. es4
  | es es d d
  | es2 r
  | r4 d f f
  | es2 e4( f)
  | es2 f4 f8. f16
  | es2 r
  | g2 ~ g4 g8. g16
  | g2 ~ g4 r8. g16
  
  % 30
  | as2 ~ as8. as16 as8. as16
  | g2 g4 r8. es'16
  | bes2 ~ bes4.. bes16
  | bes4( es,2) \breathe f4
  | g2( as8.) \breathe as16 as8. as16
  | g2. r8. g16
  | bes2 ~ bes4.. bes16
  | bes2( c4) \breathe as
  | g2 as4 as8. as16
  | g2 r
  | R1*5
  \bar "|."
}

tenors = \relative c' {
  \set Staff.midiInstrument = #"choir aahs"
  \clef bass
  \global
  %  \tempo "Andante maestoso"
  \autoBeamOff
  | R1*16
  | bes2 bes4 bes
  | c2. r8. c16
  | c4. c8 c4 g
  
  % 20
  | g2 bes4 \breathe bes
  | bes2( c4) as
  | g bes bes as
  | bes2 r
  | r4 d d bes
  | bes2 c
  | bes2 bes4 bes8. bes16
  | bes 2 r
  | es2. c8. g16
  | bes2 ~ bes4 r8. bes16
  
  % 30
  | c2 ~ c8. c16 c8. c16
  | c2 c4 es
  | es2( d4..) d16
  | es4( bes c) \breathe es
  | es( bes4..) \breathe bes16 d8. d16
  | es2. r8. es16
  | d2 ~ d4.. d16
  | es2( c4) \breathe c
  | es2 f4 es8. d16
  | es2 r
  | R1*5
  \bar "|."
}

basses = \relative c' {
  \set Staff.midiInstrument = #"choir aahs"
  \clef bass
  \global
  %  \tempo "Andante maestoso"
  \autoBeamOff
  | R1*16
  | g2 g4 g
  | f2. r8. f16
  | c4. c8 c4 c
  
  % 20
  | bes2 as4 \breathe as
  | g2( as4) as
  | bes g' f bes,
  | es2 r
  | r4 bes' as as
  | g2 as4( as,)
  | bes2 bes4 bes8. bes16
  | es2 r
  | c'2. c,8. es16
  | g2 ~ g4 r8. g16
  
  % 30
  | f2 ~ f8. f16 f8. f16
  | c4( es) g c
  | bes2( as4..) as16
  | g2( as4) \breathe as,
  | bes g' f bes,
  | es2 \breathe g4 bes ~
  | bes2( as4..) bes16
  | g2( as4) \breathe as
  | bes2 bes4 bes8. bes16
  | bes2 r
  | R1*5
  \bar "|."
}

sopranosText = \lyricmode {
  Peu -- ple~à ge -- noux, at -- tends ta dé -- li -- vran -- ce.
  No -- ël, __ voi -- ci le Ré -- demp -- "teur !"
  No -- ël, No -- ël, __ voi -- ci le Ré -- demp -- "teur !"
  
  Peu -- ple~à ge -- noux, __ at -- tends __ ta dé -- li -- vran -- ce.
  No -- ël, __ No -- ël, __ voi -- ci __ le Ré -- demp -- teur,
  No -- ël, __ No -- ël, __ voi -- ci le Ré -- demp -- "teur !"
}

contraltosText = \lyricmode {
  Peu -- ple~à ge -- noux, at -- tends ta dé -- li -- vran -- ce.
  No -- ël, voi -- ci le Ré -- demp -- "teur !"
  No -- ël, No -- ël, voi -- ci le Ré -- demp -- "teur !"
  
  Peu -- ple~à ge -- noux, __ at -- tends __ ta dé -- li -- vran -- ce.
  No -- ël, __ No -- ël, __ voi -- ci __ le Ré -- demp -- teur,
  No -- ël, __ No -- ël, __ voi -- ci le Ré -- demp -- "teur !"
}

tenorsText = \lyricmode {
  Peu -- ple~à ge -- noux, at -- tends ta dé -- li -- vran -- ce.
  No -- ël, __ voi -- ci le Ré -- demp -- "teur !"
  No -- ël, No -- ël, voi -- ci le Ré -- demp -- "teur !"
  
  Peu -- ple~à ge -- noux, __ at -- tends __ ta dé -- li -- vran -- ce.
  No -- ël, __ No -- ël, __ voi -- ci __ le Ré -- demp -- teur,
  No -- ël, __ No -- ël, __ voi -- ci le Ré -- demp -- "teur !"
}

bassosText = \lyricmode {
  Peu -- ple~à ge -- noux, at -- tends ta dé -- li -- vran -- ce.
  No -- ël, __ voi -- ci le Ré -- demp -- "teur !"
  No -- ël, No -- ël, voi -- ci le Ré -- demp -- "teur !"
  
  Peu -- ple~à ge -- noux, __ at -- tends __ ta dé -- li -- vran -- ce.
  No -- ël, __ No -- ël, __ voi -- ci le Ré -- demp -- teur,
  No -- ël, __ No -- ël, __ voi -- ci le Ré -- demp -- "teur !"
}

dynamics = {
}

\book {
  % Piano
  \bookpart {
    \score { %\transpose es c
      <<
        <<
          \new Voice = "melody" { \stanzaI }
          \addlyrics { \melodyTextI }
        >>
        \new ChoirStaff
        <<
          \new Voice = "sopranos" \sopranos
          \new Lyrics = "sopranosLyrics" \lyricsto sopranos { \sopranosText }
          \new Voice = "contraltos" \contraltos
          \new Lyrics = "contraltosLyrics" \lyricsto contraltos { \contraltosText }
          \new Voice = "tenors" \tenors
          \new Lyrics = "tenorsLyrics" \lyricsto tenors { \tenorsText }
          \new Voice = "basses" \basses
          \new Lyrics = "bassesLyrics" \lyricsto basses { \bassosText }
        >>
        \new PianoStaff
        <<
          \new Staff = "upper" \removeWithTag #'noChoir \upper 
          \new Staff = "lower" \lower
        >>
      >>
      
      \layout {
        \context { \RemoveEmptyStaffContext }
      }
      
      \midi {
        \context {
          \Score
          tempoWholesPerMinute = #(ly:make-moment 76 4)
        }
      }
    }
  }
  
  % Voice
  %{
  \bookpart {
    \score { \transpose es c
      <<
        \new Voice = "melody" {
          \removeWithTag #'piano
          \removeWithTag #'choir
          \stanzaI
        }
        \addlyrics { \melodyTextI }
      >>
    }

      \score { \transpose es c
        <<
          \new Voice = "melody" {
            \removeWithTag #'choir
            \stanzaII
          }
          \addlyrics { \melodyTextII }
        >>
      }
    \score { \transpose es c
      <<
        \new Voice = "melody" {
          \removeWithTag #'choir
          \stanzaIII
        }
        \addlyrics { \melodyTextIII }
      >> 
    }
    \paper { 
      page-count = 2
    }
  }
%}
  
  % Choir
  \bookpart {
    \score { %\transpose es c
      <<
        %<<
        %  \new Voice = "melody" { \stanzaI }
        %  \addlyrics { \melodyTextI }
        %>>
        \new ChoirStaff
        <<
          \new Voice = "sopranos" \sopranos
          \new Lyrics = "sopranosLyrics" \lyricsto sopranos { \sopranosText }
          \new Voice = "contraltos" \contraltos
          \new Lyrics = "contraltosLyrics" \lyricsto contraltos { \contraltosText }
          \new Voice = "tenors" \tenors
          \new Lyrics = "tenorsLyrics" \lyricsto tenors { \tenorsText }
          \new Voice = "basses" \basses
          \new Lyrics = "bassesLyrics" \lyricsto basses { \bassosText }
        >>
        %\new PianoStaff
        %<<
        %  \new Staff = "upper" \upper 
        %  \new Staff = "lower" \lower
        %>>
      >>
      
      \layout { }
      
      \midi {
        \context {
          \Score
          tempoWholesPerMinute = #(ly:make-moment 76 4)
        }
      }
    }
  }
  
  
}