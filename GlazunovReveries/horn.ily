\version "2.13.18"

\include "defs.ily"

horn = \relative c''
{
  \key c \major
  \transposition f
  \time 3/4
  R2. |
  r4 r \times 2/3 {aes8(\<^\dolce bes c)} |
  c4->(\> f,)\! \times 2/3 {aes8(\< bes c)} |
  c4(\! bes8-> aes-> g-> f->) |
  g8.( aes16) bes4.(\> c8) |
  \times 2/3 {bes8(\! c aes)} aes8. r16 \times 2/3 {c8(\< des ees)} |
  ees4->(\> aes,)\! \times 2/3 {c8(\< des ees)} |
  ees8(\! aes,) des4.( c8) |
  bes8.(\< c16 des4 f) |
  f->(\f bes,8) r ees4~( |
  \times 2/3 {ees8 c aes)} \times 2/3 {f8( aes c)} bes8.( ees16) |
  \times 2/3 {ees8(\menof c aes)} \times 2/3 {f4( c'8)} bes8.( c16) |
  aes2.~\> | aes8\! r r4 r |

  gis8(\mf a b4) e8.(\< b16) |
  d2~->\> d8\! r |
  gis,(\p a b) b e8.(\< b16) |
  d8.\! r16 g4.(\< d8) |
  f2->\f\> f8.( c16)\! |
  ees8. r16 des4.( f,8) |
  c'2\> c8.(\! g16) |
  bes8. r16 aes4.( d,8) |
  \crescTextCresc
  g2.~\p\< | g |
  \crescHairpin
  g8(\mf aes bes) bes ees8.(\< bes16) |
  des2.~->( |
  \dimTextDim
  \once \override DynamicTextSpanner #'dash-period = #-1.0
  des2\> c4) |
  \dimHairpin
  bes2( aes4) |
  g2.~\! |
  g4 f2 |
  \crescTextCresc
  \once \override DynamicTextSpanner #'dash-period = #-1.0
  des2\< bes4~ |
  \crescHairpin
  bes aes( g) |
  f2 \clef bass des4~ |
  des bes( aes) |
  aes2.~->\f^\agitato | aes~ | aes2 r4 |

  r4 r \clef treble \times 2/3 {aes''8(\<_\dolce bes c)} |
  c4->(\> f,)\! \times 2/3 {aes8(\< bes c)} |
  c4(\! bes8-> aes-> g-> f->) |
  g8.( aes16) bes4.(\> c8) |
  \times 2/3 {bes8(\! c aes)} aes8. r16 \breathe \times 2/3 {c8(\< des ees)} |
  ees4->(\! aes,) \times 2/3 {c8(\< des ees)} |
  ees8(\! aes,) f'4.->( ees8) |
  des8.(\< ees16 f4 g) |
  g(\! c,8) r aes'4~->(\ff |
  \times 2/3 {aes8 f des)} \times 2/3 {bes8( des f)} \times 2/3 {ees4 ees8~(\f} |
  \times 2/3 {ees8 c aes)} \times 2/3 {f8( aes c)} \times 2/3 {bes4 bes8~(\mf} |
  \times 2/3 {bes8 g ees)} \times 2/3 {c8( ees g)} f4~\> |
  \crescTextCresc
  \once \override DynamicTextSpanner #'dash-period = #-1.0
  f2\p\< g4 |
  \crescHairpin
  aes des4.( aes8) |
  c2.~->(\f\> |
  c4\! bes4. aes8) |
  aes2.~\p | aes |
  aes8(\mf bes c) c f8.( c16) |
  ees4 des4.( aes8) |
  c2.~\> | c4\! r r |
  aes2-+(\pp^\bouche bes4-+ |
  c-+) f4.-+( c8-+) |
  ees2.~-+ | ees-\open\< |
  ees2.~\mf^\morendo | ees\fermata |
}
