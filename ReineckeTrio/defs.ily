\version "2.13.16"

%====
%Octave function
#(define (octave-up m t)
  (let* ((octave (1- t))
        (new-note (ly:music-deep-copy m))
        (new-pitch (ly:make-pitch
          octave
          (ly:pitch-notename (ly:music-property m 'pitch))
          (ly:pitch-alteration (ly:music-property m 'pitch)))))
    (set! (ly:music-property new-note 'pitch) new-pitch)
    new-note))

#(define (octavize-chord elements t)
  (cond ((null? elements) elements)
       ((eq? (ly:music-property (car elements) 'name) 'NoteEvent)
         (cons (car elements)
               (cons (octave-up (car elements) t)
                     (octavize-chord (cdr elements) t))))
       (else (cons (car elements) (octavize-chord (cdr elements) t)))))

#(define (octavize music t)
   (if (eq? (ly:music-property music 'name) 'EventChord)
         (ly:music-set-property! music 'elements
           (octavize-chord (ly:music-property music 'elements) t)))
   music)

octaves = #(define-music-function (parser location arg mus) (integer? ly:music?)
  (music-map (lambda (x) (octavize x arg)) mus))
%====

tempoMark = #(define-music-function (parser location markp) (string?)
#{
  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \once \override Score.RehearsalMark #'extra-spacing-width = #'(+inf.0 . -inf.0)
  \mark \markup { \bold $markp }
#})

dolce = \markup{\italic dolce}
mdolce = \dolce
mdolceespr = \markup{\italic "dol. espress."}
espr = \markup{\italic espress.}
mespr = \espr
mmaespr = \markup{\italic "ma espress."}
calando = \markup{\italic calando}
colFuoco = \markup{\italic {col fuoco}}
congrazia = \markup{\italic {con grazia}}
mfsempre = #(make-dynamic-script (markup #:dynamic "mf" #:normal-text #:italic "sempre"))
mfconagitazione = #(make-dynamic-script (markup #:dynamic "mf" #:normal-text #:italic "con agitazione"))
fsempre = #(make-dynamic-script (markup #:dynamic "f" #:normal-text #:italic "sempre"))
fconanima = #(make-dynamic-script (markup #:dynamic "f" #:normal-text #:italic "con anima"))
fconfuoco = #(make-dynamic-script (markup #:dynamic "f" #:normal-text #:italic "con fuoco"))
sempref = #(make-dynamic-script (markup #:normal-text #:italic "sempre" #:dynamic "f"))
piuf = #(make-dynamic-script (markup #:normal-text #:italic "più" #:dynamic "f"))
ppdolce = #(make-dynamic-script (markup #:dynamic "pp" #:normal-text #:italic "dolce"))
pdolce = #(make-dynamic-script (markup #:dynamic "p" #:normal-text #:italic "dolce"))
pDol = #(make-dynamic-script (markup #:dynamic "p" #:normal-text #:italic "dol"))
pcongrazia = #(make-dynamic-script (markup #:dynamic "p" #:normal-text #:italic "con grazia"))
pcalando = #(make-dynamic-script (markup #:dynamic "p" #:normal-text #:italic "calando"))
ppcalando = #(make-dynamic-script (markup #:dynamic "pp" #:normal-text #:italic "calando"))
ptranquillo = #(make-dynamic-script (markup #:dynamic "p" #:normal-text #:italic "tranquillo"))
sfpp = #(make-dynamic-script "sfpp")

crescTextCresc =
{
  \set crescendoText = \markup { \italic "cresc." }
  \set crescendoSpanner = #'text
  \override DynamicTextSpanner #'style = #'dashed-line
  \override DynamicTextSpanner #'dash-period = #3.0
}

crescTextCrescMolto =
{
  \set crescendoText = \markup { \italic "cresc. molto" }
  \set crescendoSpanner = #'text
  \override DynamicTextSpanner #'style = #'dashed-line
  \override DynamicTextSpanner #'dash-period = #3.0
}

crescJustTextCresc =
{
  \set crescendoText = \markup { \italic "cresc." }
  \set crescendoSpanner = #'text
  \override DynamicTextSpanner #'dash-period = #-1.0
}

crescJustTextUnPocoCresc =
{
  \set crescendoText = \markup { \italic "un poco cresc." }
  \set crescendoSpanner = #'text
  \override DynamicTextSpanner #'dash-period = #-1.0
}

dimJustTextDecresc =
{
  \set decrescendoText = \markup { \italic "decresc." }
  \set decrescendoSpanner = #'text
  \override DynamicTextSpanner #'dash-period = #-1.0
}

dimTextDecresc =
{
  \set decrescendoText = \markup { \italic "decresc." }
  \set decrescendoSpanner = #'text
  \override DynamicTextSpanner #'style = #'dashed-line
  \override DynamicTextSpanner #'dash-period = #3.0
}

dimTextSempreDim =
{
  \set decrescendoText = \markup { \italic "sempre dim." }
  \set decrescendoSpanner = #'text
  \override DynamicTextSpanner #'style = #'dashed-line
  \override DynamicTextSpanner #'dash-period = #3.0
}

outlineMvtI =
{
  \override Score.PaperColumn #'keep-inside-line = ##t
  \override Score.NonMusicalPaperColumn #'keep-inside-line = ##t
  \set Score.skipBars = ##t
  \time 4/4
  \tempo "Allegro moderato" 4=120
  s1*2 |
  \repeat volta 2
  {
    s1*66 |
  }
  \alternative
  {
    {s1*2 |}
    {s1 |}
  }
  s1*27 |
  %cal
  s1 |
  \tempo "a tempo"
  s1*17 |
  %cal
  s1 |
  \tempo "a tempo"
  s1*46 | \bar "||"

  %a major
  \tempo "a tempo"
  s1*24 | \bar "||"

  %a minor
  s1*21 | \bar "|."
}

outlineMvtII =
{
  \override Score.PaperColumn #'keep-inside-line = ##t
  \override Score.NonMusicalPaperColumn #'keep-inside-line = ##t
  \set Score.skipBars = ##t
  \time 6/8
  \tempoMark "Scherzo"
  \tempo "Molto vivace" 4.=116
  \partial 8*2 s8 s |
  s2.*2 |
  \repeat volta 2
  {
    s2.*12 |
  }
  s2.*59 | \bar "||"
  s2.*93 | \bar "|."
}

outlineMvtIII =
{
  \override Score.PaperColumn #'keep-inside-line = ##t
  \override Score.NonMusicalPaperColumn #'keep-inside-line = ##t
  \set Score.skipBars = ##t
  \time 4/4
  \tempo "Adagio" 4=60
  s1*42 |

  \tempo "a tempo"
  s1*12 |

  %rit
  s1 |

  \tempo "a tempo"
  s1*24 | \bar "|."
}

outlineMvtIV =
{
  \override Score.PaperColumn #'keep-inside-line = ##t
  \override Score.NonMusicalPaperColumn #'keep-inside-line = ##t
  \set Score.skipBars = ##t
  \time 4/4
  \tempoMark "Finale"
  \tempo "Allegro ma non troppo" 4=152
  \partial 4 s4 |
  s1*87 |

  \tempo "a tempo"
  s1*178 | \bar "|."
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
    \override NoteCollision #'merge-differently-dotted = ##t
    autoAccidentals = #`(Staff ,(make-accidental-rule 'same-octave 0)
                               ,(make-accidental-rule 'any-octave 0)
                               ,(make-accidental-rule 'same-octave 1))
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
