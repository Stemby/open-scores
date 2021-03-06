\version "2.13.14"

mCresc = \markup {\italic cresc.}
mDolce = \markup {\italic dolce}
mMoltoP = \markup {\italic molto \dynamic p}
mPSempre = \markup {\dynamic p \italic sempre}
mPDolce = \markup {\dynamic p \italic dolce}
mPocoCresc = \markup {\italic {poco cresc.}}
mPocoAPocoCresc = \markup {\italic {poco a poco cresc.}}
mPocoAPocoRit = \markup {\italic {poco a poco rit.}}
mPRitPocoAPoco = \markup {\dynamic p \italic {rit. poco a poco}}
mPRit = \markup {\dynamic p \italic rit.}
mSempreP = \markup {\italic sempre \dynamic p}
mSempreCresc = \markup {\italic {sempre cresc.}}
mSempreCrescAnimato = \markup {\italic {sempre cresc. e un poco animato poi a poi}}
mSempreDimRitPoco = \markup {\italic {sempre dim. e rit. poco a poco}}
mEsprSempreCresc = \markup {\italic {espress. sempre cresc.}}
mDim = \markup {\italic dim.}
mDimPocoRit = \markup {\italic {dim. poco a poco rit.}}
mPDolceEspr = \markup {\dynamic p \italic {dolce espress.}}
mMPEspr = \markup {\dynamic mp \italic espress.}
mPEspr = \markup {\dynamic p \italic espress.}
mFEspr = \markup {\dynamic f \italic espress.}
mMFCresc = \markup {\dynamic mf \italic cresc.}
mPCresc = \markup {\dynamic p \italic cresc.}
mFPassionato = \markup {\dynamic f \italic passionato}
mFLegato = \markup {\dynamic f \italic legato}
mPSempreELegato = \markup {\dynamic p \italic {sempre e legato}}
mLegato = \markup {\italic legato}
mNonLegato = \markup {\italic {non legato}}
mFNonLegato = \markup {\dynamic f \italic {non legato}}
mEspr = \markup {\italic espress.}
mSenzaRit = \markup {\italic {senza rit.}}
mPocoAnimatoPoiAPoi = \markup {\italic {un poco animato poi a poi}}
mPocoAccel = \markup {\italic {poco accel.}}
mPiuP = \markup {\italic più \dynamic p}
mAdlib = \markup {ad lib.}
mLeggiero = \markup {\italic leggiero}
mPLeggiero = \markup {\dynamic p \italic leggiero}
mStacc = \markup {\italic stacc.}
mColPed = \markup {\italic {col Ped.}}
mPUnaCorda = \markup {\dynamic p \italic {una corda}}
mUnaCordaP = \markup {\italic {una corda} \dynamic p}
mPTreCorda = \markup {\dynamic p \italic {tre corda}}
mUnPocoStringendoCresc = \markup {\column {
  \line {\italic {un poco stringendo}}
  \line {\italic{cresc.}}}}
mInTempo = \markup {\italic {in tempo}}
mMarcato = \markup {\italic marcato}

stop =
#(define-music-function (parser location music) (ly:music?)
  (set! (ly:music-property music 'tweaks)
        (acons 'before-line-breaking
               (lambda (grob)
                 (let ((dots (ly:grob-object grob 'dot)))
                   (ly:grob-set-property! grob 'duration-log 2)
                   (and (ly:grob? dots)
                        (ly:grob-set-property! dots 'dot-count 0))))
               (ly:music-property music 'tweaks)))
  music)

fade = {s16\> s s s\!}

tupletTransparent =
{
  \override TupletNumber #'transparent = ##t
  \override TupletBracket #'transparent = ##t
}

tupletVisible =
{
  \revert TupletNumber #'transparent
  \revert TupletBracket #'transparent
}

tempoMark = #(define-music-function (parser location markp) (string?)
#{
  \once \override Score.RehearsalMark #'self-alignment-X = #left
  \once \override Score.RehearsalMark #'extra-spacing-width = #'(+inf.0 . -inf.0)
  \mark \markup { \bold $markp }
#})

outlineMvtI =
{
  \time 2/4 \tempoMark "Andante" \partial 4 s4 | s2*28 |
  \mark \default s2*27 |
  \mark \default s2*21 \bar "||"
  \time 9/8 \tempoMark "Poco più animato" s4.*3*18 |
  \mark \default s4.*3*15 |
  \mark \default s4.*3*21 \bar "||"
  \time 2/4 \tempoMark "Tempo I" s2*8 |
  \mark \default s2*28 \bar "||"
  \time 9/8 \tempoMark "Poco più animato" s4.*3*12 |
  \mark \default s4.*3*11 |
  \mark \default s4.*3*10 \bar "||"
  \time 2/4 \tempoMark "Tempo I" s2*20 |
  \mark \default s2*14 \bar "||" s2*11 |
  \mark \default s2*22
  \bar "|."
}

outlineMvtII =
{
  \time 3/4
  \tempoMark "Allegro" s2.*12 |
  \mark \default s2.*48 |
  \mark \default s2.*36 \bar "||" s2.*24 |
  \mark \default s2.*24 |
  \mark \default s2.*8 \bar "||" s2.*14
  \mark \default s2.*56 |
  \mark \default s2.*28 |
  \mark \default s2.*26 |
  s2. | \bar "||" \break
  \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark #'direction = #DOWN
  \once \override Score.RehearsalMark #'font-size = 0
  \once \override Score.RehearsalMark #'self-alignment-X = #right
  \mark \markup{Fine}
  s2.*9 \bar "||"
  \tempoMark "Molto meno Allegro" s2.*32 |
  \mark \default s2.*43
  s2. \bar "||"
  \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark #'direction = #DOWN
  \once \override Score.RehearsalMark #'font-size = 1
  \once \override Score.RehearsalMark #'self-alignment-X = #right
  \mark \markup{D.C. al Fine}
  %Shortened, not same as source score (Scherzo D.C. sin'al Fine)
  %TODO: fix extra space after end of piece.
}

outlineMvtIII =
{
  \time 6/8
  \tempoMark "Adagio mesto" s2.*18 |
  \mark \default s2.*7 \bar "||"
  \time 9/8 s4.*3 \bar "||"
  \time 6/8 s2.*5 |
  \mark \default s2.*27 |
  \mark \default s2.*15 |
  \mark \default s2.*3 |
  \tempoMark "Tempo I" s2.*10 \bar "|."
}

outlineMvtIV =
{
  \time 6/8
  \repeat volta 2
  {
    \tempoMark "Allegro con brio" \partial 8 s8 | s2.*8 |
    \mark \default s2.*28 |
    \mark \default s2.*30 |
    \mark \default s2.*16 |
    \mark \default s2.*8 |
  }
  \alternative
  {
    {s2.*7 \partial 8*5 s8*5}
    {s8*3}
  }
  s8*3 |
  s2.*3 |
  \mark \default s2.*40 |
  \mark \default s2.*58 |
  \mark \default s2.*34 |
  \mark \default s2.*32 |
  \mark \default s2.*29 \bar "|."
}

midiOutlineMvtI =
{
  %2/4 Andante
  \tempo 4=60
  \partial 4 s4 | s2*28 |
  s2*27 |
  s2*21 |
  %9/8 Poco più animato
  \tempo 4.=72
  s4.*3*18 |
  s4.*3*15 |
  s4.*3*21 |
  %2/4 Tempo I
  \tempo 4=60
  s2*8 |
  s2*28 |
  %9/8 Poco più animato
  \tempo 4.=72
  s4.*3*12 |
  s4.*3*11 |
  s4.*3*10 |
  %2/4 Tempo I
  \tempo 4=60
  s2*20 |
  s2*14 | s2*11 |
  s2*22
}

midiOutlineMvtII =
{
  %3/4 Allegro
  \tempo 2.=100
  s2.*12 |
  s2.*48 |
  s2.*36 | s2.*24 |
  s2.*24 |
  s2.*8 | s2.*14
  s2.*56 |
  s2.*28 |
  s2.*26 |
  s2. | %Fine
  s2.*9 |
  %Molto meno Allegro
  \tempo 4=120
  s2.*32 |
  s2.*43
  s2. | %D.C. al Fine
}

midiOutlineMvtIII =
{
  %6/8 Adagio mesto
  \tempo 8=72
  s2.*18 |
  s2.*7 |
  %9/8
  s4.*3 |
  %6/8
  s2.*5 |
  s2.*27 |
  s2.*15 |
  s2.*3 |
  %Tempo I
  s2.*10 |
}

midiOutlineMvtIV =
{
  %6/8
  \tempo 4.=120
  \repeat volta 2
  {
    %Allegro con brio
    \partial 8 s8 | s2.*8 |
    s2.*28 |
    s2.*30 |
    s2.*16 |
    s2.*8 |
  }
  \alternative
  {
    {s2.*7 \partial 8*5 s8*5}
    {s8*3}
  }
  s8*3 |
  s2.*3 |
  s2.*40 |
  s2.*58 |
  s2.*34 |
  s2.*32 |
  s2.*29 |
}

afterGraceFraction = #(cons 15 16)

\layout
{
  \context
  {
    \Score
    skipBars = ##t
    extraNatural = ##f
    \override PaperColumn #'keep-inside-line = ##t
    \override NonMusicalPaperColumn #'keep-inside-line = ##t
    autoAccidentals = #`(Staff ,(make-accidental-rule 'same-octave 0)
                               ,(make-accidental-rule 'any-octave 0)
                               ,(make-accidental-rule 'same-octave 1))
  }

  \context
  {
    \RemoveEmptyStaffContext
  }
}

\midi
{
  \context
  {
    \Voice
    \remove "Dynamic_performer"
  }
}

\paper
{
  ragged-right = ##f
  ragged-last = ##f
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}
