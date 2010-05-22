\version "2.10.14"

staffinstvlI = \context Voice = vlI { \set Staff.instrumentName = \markup { "Violino I" \hspace #0.5 }}
staffinstvlII = \context Voice = vlII { \set Staff.instrumentName = \markup { "Violino II" \hspace #0.5 }}
staffinstvla = \context Voice = vla { \set Staff.instrumentName = \markup { "Viola" \hspace #0.5 }}
staffinstvlc = \context Voice = vlc { \set Staff.instrumentName = \markup { "Violoncello" \hspace #0.5 }}

unPoRit = \markup { \italic "un poco ritard." }

pSempTener = \markup { \line { \dynamic p \hspace #0.5 \italic "sempre teneramente" } }

un = \markup { \italic "un" }
poco = \markup { \italic "poco" }
ri = \override TextSpanner #'edge-text = #(cons (markup #:italic "ri" ) "")
te = \override TextSpanner #'edge-text = #(cons (markup #:italic "te" ) "")
nu = \override TextSpanner #'edge-text = #(cons (markup #:italic "nu" ) "")
to = \markup { \italic "to" }

unPoRitardan = \override TextSpanner #'edge-text = #(cons (markup #:italic "un poco ritardan" ) "")
do = \markup { \italic "do" }

tar = \override TextSpanner #'edge-text = #(cons (markup #:italic "tar" ) "")
dan = \override TextSpanner #'edge-text = #(cons (markup #:italic "dan" ) "")

% stacc = \markup { \italic "staccato" }
% fStacc = \markup { \line { \dynamic f \italic "staccato" } }

% attacca = \markup { \italic "attacca" }

aTempo = \markup { \italic "a tempo" }

dimin = \markup { \italic "dim." }
crescen = \markup { \italic "cresc." }

ten = \markup { \italic "ten." }

sforzp = \markup { \dynamic sf \dynamic p }
sempreF = \markup { \line { \italic "sempre" \hspace #0.5 \dynamic f } }
piuP = \markup { \line { \italic "più" \hspace #0.5 \dynamic p } }
piuF = \markup { \line { \italic "più" \hspace #0.5 \dynamic f } }

minHarp = \once \override Staff.Hairpin #'minimum-length = #3
