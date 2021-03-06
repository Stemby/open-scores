\version "2.13.10"

\include "defs.ily"

violinIIMvtI = \relative c'
{
  \key ees \major
  g16(\p bes) ees bes ees bes ees bes
  \repeat unfold 3 {g16( bes) ees bes ees bes ees bes}
  aes( bes) f' bes, f' bes, f' bes, bes( d) f d f d f d |
  \repeat unfold 2 {bes( ees) g ees g ees g ees} |
  c(\f ees) aes ees aes ees aes ees c'(\p bes aes g f ees d c) |
  bes(\f ees) g ees g ees g ees bes'(\p aes g f ees d c bes) |
  \repeat tremolo 4 d16\f \repeat tremolo 4 f \repeat tremolo 4 d \repeat tremolo 4 f |
  g16 ees f g aes bes c d ees f g aes bes g f ees |
  <bes' bes, d,>4 bes,,8. bes16 bes4 r |

  <<
    {s8 s\p}
    \repeat unfold 2
    {
      r8 g'( bes g bes g bes g) |
      r bes,( ees bes ees bes es bes) |
      bes4 ees2( d4) |
      ees r r2 |
    }
  >>
  ees8 ees ees ees f4.( g16 aes) |
  g4.( aes16 bes) aes4.( bes16 c) |
  aes8\f aes4 aes8 <d f,>8 <d f,>4 <d f,>8 |
  \repeat tremolo 8 <ees ees,>16 \repeat tremolo 8 <ees ees,> |
  \repeat tremolo 8 ees \repeat tremolo 8 d |
  ees4 <g bes,>4. f16 ees \grace ees16 d8 c16 d |
  ees4 <ees, g,>8. <ees g,>16 <ees g,>4 r |

  %solo
  g,16(\p bes ees bes g bes ees bes g bes ees bes g bes ees bes) |
  aes( bes f' bes, aes bes f' bes, aes bes f' bes, g bes ees bes) |
  \repeat unfold 8 f'8 |
  ees4 r8 ees-.\f bes-. ees-. aes,-. ees'-. |
  g,\p bes bes bes r bes bes bes |
  r aes aes aes r aes aes aes |
  bes2~ bes4 r |
  g'8( f) ees2( d4) |
  ees r16 ees'\f d c bes c bes aes g aes g f |
  ees4 r r bes\p |
  f' r r f |
  g1 |
  f4 a( bes c) |
  \repeat unfold 38 bes8 aes aes |
  g r g r g r g r |
  f4 a,8 a a a( bes c) |
  d( bes d bes d bes d bes) |
  r bes( d bes d bes d bes) |
  bes2. a4 |
  bes r r2 |
  r8 d( f d f d f d) |
  r bes( d bes d bes d bes) |
  r4 bes'2( a4) |
  bes ees,( f4. g16 aes) |
  g1~ |
  g8 d ees f g4 r |
  d8( bes) d-. d-. d8( bes) c-. c-. |
  d4 r r8 bes' d, f |
  ees4 r r8 a c a |
  bes4 r r8 ees, ees ees |
  ees2~ ees8 d c bes |
  a4 a'2 a4 |
  bes8 r r4 c8 r r4 |
  r8 bes bes bes bes bes a a |

  bes4 r
  \repeat unfold 2
  {
    \grace c,16 bes8( a bes c) |
    d( bes d bes ees f g ees) |
    d( bes d f) \repeat unfold 12 bes |
    a2
  }
  bes,8 r bes r |
  a2 bes'8 r bes r |
  a2 a,( | bes c | d ees | d) ees4 ees |
  d d c c |
  bes8 bes'\f c d ees16 d ees f g f g a |
  bes4 r8 f,8\p bes4 ees |
  f8 r r4 bes,8 r r4 |
  \repeat unfold 8 bes8 |
  \crescJustTextCresc
  bes16\< bes bes bes \repeat tremolo 4 bes16 \repeat tremolo 8 a |

  %tutti
  bes16(\f d f d f d f d) f(\p ees d c bes a g f) |
  g(\f bes ees bes ees bes ees bes) g'(\p f ees d c bes a g) |
  f(\f bes d bes d bes d bes) d(\p c bes a g f ees d) |
  c16 c c c \repeat tremolo 8 ees16 \repeat tremolo 4 a |
  \repeat tremolo 8 bes \repeat tremolo 8 bes |
  \repeat tremolo 8 bes \repeat tremolo 8 a |
  bes4 d4. c16 bes \grace bes16 a8 g16 a |
  bes4 bes,8. bes16 bes4 r |

  %solo
  r8 des4\p des des des8 |
  r ees4 ees ees ees8 |
  r ees4 ees ees ees8 |
  r des4 des des des8 |
  r bes4 bes bes bes8 |
  a4 bes c2 |
  des4 bes'2 bes4 |
  a c,2 aes4 |
  << \repeat unfold 4 {aes16 des f des} {s16( s16*14 s16)} >> |
  << \repeat unfold 4 {bes16 ees ges ees} {s16( s16*14 s16)} >> |
  << \repeat unfold 4 {aes,16 ees' ges ees} {s16( s16*14 s16)} >> |
  f4 r8 ces-. ces( bes) bes( aes) |
  << \repeat unfold 4 {bes16 ees ges ees} {s16( s16*14 s16)} >> |
  << \repeat unfold 4 {ces16 f aes f} {s16( s16*14 s16)} >> |
  << \repeat unfold 4 {bes,16 f' aes f} {s16( s16*14 s16)} >> |
  ges4 r8 des-. des( c) c( bes) |
  << \repeat unfold 4 {aes16 c f c} {s16( s16*14 s16)} >> |
  bes16( des f des bes des f des) bes( des ges des bes des ges des) |
  bes( c g' c, bes c g' c, bes c g' c, g c e c) |
  r8 c c c r aes aes aes |
  r aes aes aes r a a a |
  g d' d d ees ees ees ees |
  d d' d d ees ees ees ees |
  d d,4 d d d8 |
  r d4 d d d8 |
  \crescJustTextCresc
  r bes4\< bes bes bes8 |

  %tutti
  g16\p( \repeat unfold 7 {bes ees} bes) |
  g16( \repeat unfold 7 {bes ees} bes) |
  aes( bes f' bes, f' bes, f' bes,) bes( d f d f d f d) |
  bes( ees g ees g ees g ees) bes( ees g ees g ees g ees) |
  c(\f ees aes ees aes ees aes ees) c'(\p bes aes g f ees d c) |
  bes(\f ees g ees g ees g ees) bes'(\p aes g f ees d c bes) |
  \repeat tremolo 4 d16\f \repeat tremolo 4 f \repeat tremolo 4 d \repeat tremolo 4 f |
  g16 ees f g aes bes c d ees f g aes bes g f ees |
  <bes' bes, d,>4 bes,,8. bes16 bes4 r |

  %solo
  g16(\p bes ees bes g bes ees bes g bes ees bes g bes ees bes) |
  aes( bes f' bes, aes bes f' bes, aes bes f' bes, g bes ees bes) |
  \repeat unfold 8 f'8 |
  ees4 r8 ees-.\f bes-. ees-. aes,-. ees'-. |
  g,\p bes bes bes r bes bes bes |
  r aes aes aes r aes aes aes |
  bes2~ bes4 r |
  g'8( f) ees2( d4) |
  ees r16 ees'\f d c bes c bes aes g aes g f |
  ees4 r r bes\p |
  f' r r f |
  g1 |
  f4 a( bes c) |
  \repeat unfold 24 bes8 |
  bes4 r r8 g16 aes \grace c16 bes8 aes16 g |
  aes4 r r8 aes16 bes \grace des16 c8 bes16 aes |
  bes4 r r8 des( c des) |
  c8 r aes r f r c' r |
  bes4 d,8 d d-. d( ees f) |

  %tutti
  r8 g( bes g bes g bes g) |
  r bes,( ees bes ees bes ees bes) |
  bes4 ees2( d4) |
  ees r r2 |

  %solo
  r8 g( bes g bes g bes g) |
  r bes,( ees bes ees bes ees bes) |
  bes4 ees2( d4) |
  ees aes,( bes4. c16 des) |
  c4 r r2 |
  r8 e( f g aes g aes a |
  bes4) r r2 |
  r8 d,( ees d ees f fis g) |
  r8 aes4 g f ees8~ |
  ees d4 c bes aes8 |
  g8 bes bes bes r c c c |
  r bes bes bes r bes bes bes |

  %tutti
  bes4 r ees8( d ees f) |
  g( ees g ees aes bes c aes) |
  g( ees g ees) \repeat unfold 12 ees |

  %solo
  d2 \grace f16 ees8( d ees f) |
  g( ees g ees aes bes c aes) |
  g( ees g ees) \repeat unfold 12 ees |
  d2 ees'8 r ees r |
  d2 ees,8 r ees r |
  d2 d8( bes d bes) |
  ees( bes ees bes f' bes, f' bes,) |
  g'( bes, g' bes, aes' bes, aes' bes,) |
  g'( bes, g' bes,) f'4 f |
  ees ees ees d |
  ees8 ees\f ees ees ees f16 g aes bes c d |
  ees4 r8 ees,8\p ees4 aes |
  g r ees r |
  \repeat unfold 8 ees8 |
  \crescJustTextCresc
  \repeat tremolo 8 ees16\< \repeat tremolo 8 d |

  %tutti
  ees16(\f g bes g bes g bes g) bes(\p aes g f ees d c bes) |
  c(\f ees aes ees aes ees aes ees) c'(\p bes aes g f ees d c) |
  bes(\f ees g ees g ees g ees) bes'(\p aes g f ees d c bes) |
  \repeat tremolo 4 d16\f \repeat tremolo 4 f \repeat tremolo 4 d \repeat tremolo 4 f |
  \repeat tremolo 8 ees16 \repeat tremolo 8 ees |
  \repeat tremolo 8 ees' \repeat tremolo 8 d |
  ees4 <g bes,>4. f16 ees \grace ees16 d8 c16 d |
  ees4 <ees, g,>8. <ees g,>16 <ees g,>4 r |
}

violinIIMvtII = \relative c'
{
  \key bes \major
  d4(\p ees8) |
  d( c ees) |
  d r d'~ |
  d( c bes) |
  r r bes, |
  bes( a bes) |
  r cis( d) |
  r a( bes) |
  r d bes16( g) |
  a a( bes c d ees) |
  d4( ees8) |
  d( c ees) |
  d r d~ |
  d( c bes) |
  r r bes' |
  bes( a bes) |
  r r bes, |
  bes( a bes) |
  r c c |
  r ees ees |
  r d( f) |
  r f( g16 e) |
  f8( a) a |
  r a a |
  r g( aes) |
  r a( bes16 g) |
  \grace g16 f8 <f a,> <f a,> |
  <f a,> r r |
  a,16(\p c ees c ees c) |
  bes( d f d f d) |
  c( ees f ees f ees) |
  bes( d f d f d) |
  a( c ees c ees c) |
  d8 r r |
  d4( bes8) |
  a16 c' c c c c |
  c c c c c c |
  c8 r16 c,( bes g) |
  a( c a c bes g) |
  a8 r r |
  d4( ees8) |
  d( c ees) |
  d r d~ |
  d( c bes) |
  r r bes~ |
  bes a( aes) |
  g r ees'~ |
  ees d( ees) |
  r ees ees |
  ees( d) r |
  c( bes a) |
  bes16 f'( ees c d bes) |
  a16( c ees c ees c) |
  bes( d f d f d) |
  c( ees f ees f ees) |
  bes( d f d f d) |
  a( c ees c ees c) |
  d8 r r |
  d4( bes8) |
  a16 c' c c c c |
  c c c c c c |
  c8 r16 c,( bes g) |
  a( c a c bes g) |
  a8 r r |
  d4( ees8) |
  d( c ees) |
  d r d~ |
  d( c bes) |
  r r bes~ |
  bes a( aes) |
  g r ees'~ |
  ees d( ees) |
  r ees ees |
  ees( d) r |
  c'( bes a) |
  r bes bes |
  r aes aes |
  r g( bes) |
  bes8.
    \set stemLeftBeamCount = #1
    \set stemRightBeamCount = #2
    d16(
    \set stemLeftBeamCount = #2
    c a) |
  bes8 d, d |
  r d d |
  r ees( e) |
  f8.
    \set stemLeftBeamCount = #1
    \set stemRightBeamCount = #2
    d16(
    \set stemLeftBeamCount = #2
    ees c) |
  bes8 bes\pp bes |
  bes4 r8 |
}

violinIIMvtIIIMain = \relative c'
{
  g4\p r8 bes4 r8 |
  bes2.~ |
  bes4 r8 ees4. |
  d r |
  g,4 g8 bes4 ees8 |
  g4( f8) d4. |
  ees8 r ees ees r d |
  ees g, g g4 g'8\f |

  g( bes) bes-. bes( ees) ees-. |
  g4( f8) d4( ees16 f) |
  g8( ees) bes a4 ees'8 |
  d8.(
    \set stemLeftBeamCount = #1
    \set stemRightBeamCount = #2
    bes16
    \set stemLeftBeamCount = #2
    c a) bes4 aes8 |
  g( bes) bes-. bes( ees) ees-. |
  ees( g f) d4( ees16 f) |
  g8 ees ees ees4 d8 |
}

violinIIMvtIIIMainEnd = \relative c''
{
  ees <ees, g,> <ees g,> <ees g,>4 r8 |
}

violinIIMvtIII = \relative c'
{
  \key ees \major
  r8 |
  \violinIIMvtIIIMain
  \violinIIMvtIIIMainEnd

  r8 g\p g r g g |
  r g g g( ees' g) |
  f4 r8 ees4 r8 |
  d d d d( ees aes,) |
  \repeat unfold 6 g |
  g bes ees g4 g8 |
  f4 r8 ees4 r8 |
  d4.( ees8) r bes' |
  bes4.~ bes8 r r |
  ees,4.( d8) r r |
  bes4.~ bes8 r r |
  c'4.( bes8) r r |
  bes2. |
  a( |
  bes |
  a8) r r ees'4.\fp |
  d8( f) d-. \appoggiatura d16 c8 bes-. a-. |
  bes4.( f) |
  ees2.( |
  d8 r r f4. |
  g4( f8 g4 ees8) |
  d4. f |
  g4( f8 g4 ees8) |
  d4 r8 aes'4( g8) |
  d4( ees8) f'4( ees8) |
  d16( ees d8) r f,4( ees8) |
  aes,4( g8) d'4( ees8) |
  d4.( ees) |
  d4.( ees) |
  d r4\fermata r8 |

  \violinIIMvtIIIMain
  \violinIIMvtIIIMainEnd

  R2. |
  r8 ees\p ees ees ees ees |
  ees( d) d-. d( c) c-. |
  c( b) b-. b r r |
  R2. |
  r8 f' f f f f |
  f( ees) ees-. ees( d) d-. |
  c4.( ees) |
  f4.~ f8( ees d) |
  c4( b8) c4. |
  b4 r8 r4. |
  c4.( ees~) |
  ees2. |
  d4( g8) g4( fis8) |
  g4 r8 r4. |
  r8 g,( c) r c( g') |
  f4 r8 r4 g8 |
  f f f r e e |
  f4 r8 r4. |
  r8 d( f) r f( bes) |
  bes4 r8 r4 f8 |
  ees ees ees r d d |
  ees4 r8 r4 bes'8 |
  b4.( c) |
  d4 r8 r4 ees8 |
  d4.( c) |
  b r |
  r8 d, d r aes' aes |
  r g g r d d |
  r c c r b b |
  c4 r8 r4. |
  R2. |
  <d aes>8\f r <d aes>16 <d aes> \repeat unfold 3 {<d aes>8 r <d aes>16 <d aes>} |

  \violinIIMvtIIIMain
  ees'2.\p |
  ees, |
  f |
  d |
  ees4. bes |
  c bes~ |
  bes g |
  aes2. |

  ees'4.~ ees8 f g |
  ees4.~ ees8( d ees) |
  f( g aes g f ees) |
  d4.( f8) r r |
  bes4.~ bes8( aes bes) |
  c( aes g f g aes) |
  bes( aes g f g ees) |
  d2. |
  ees |
  d8 r r aes'4.\sf |
  g8( bes) g-. \appoggiatura g16 f8 ees-. d-. |
  ees4.( bes) |
  aes2.( |
  g8) r r ees'4.~ |
  ees( d) |
  ees c~ |
  c( bes~) |
  bes g' |
  aes8( g f) f( ees d) |
  ees4 bes'8\f g4 bes8 |
  ees4 f8 g4 f8 |
  ees8. f16 ees8 d8.\trill c16 d8 |
  << {s4. s\p} ees2.~ >> | ees~ | ees~ |
  ees8 g,, g g g g |
  g4\p g8 g4 ees'8 |
  g4( f8) d4.( |
  ees8) r r r4. |
  ees2. |
  f4 r8 r4. |
  bes,4 bes8 bes4 ees8 |
  g4( f8) d4.( |
  ees8) r r r4. |
  ees4 ees8 d4 d8 |
  ees g, g g4 r8 |

  bes'8\p r bes16 bes
    \repeat unfold 12 {bes8 r bes16 bes}
    bes8 r aes\f |
  \repeat tremolo 6 g16 \repeat tremolo 6 bes |
  \repeat tremolo 12 bes16 |
  \repeat tremolo 12 bes16 |
  bes8 r r g\p r r |
  ees r r g r r |
  g r r <g' bes, ees,>\f r r |
  <ees, g,> r r <g' bes, ees,> r r |
  <ees, g,> r r r4. |
}
