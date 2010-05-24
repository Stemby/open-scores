\version "2.12.0"

% MAYBE WITHOUT \hspaceS IS BETTER
% FOR NEW DYNAMICS SEE: http://lilypond.org/doc/v2.12/Documentation/user/lilypond/Attached-to-notes#New-dynamic-marks

staffinstvlI = \context Voice = vlI { \set Staff.instrumentName = \markup { "Violino I" \hspace #0.5 }}
staffinstvlII = \context Voice = vlII { \set Staff.instrumentName = \markup { "Violino II" \hspace #0.5 }}
staffinstvla = \context Voice = vla { \set Staff.instrumentName = \markup { "Viola" \hspace #0.5 }}
staffinstvlc = \context Voice = vlc { \set Staff.instrumentName = \markup { "Violoncello" \hspace #0.5 }}

unPoRit = \markup { \italic "un poco ritard." }

pSempTener = \markup { \line { \dynamic p \hspace #0.5 \italic "sempre teneramente" } }

unPoco = \markup { \italic "un poco" }
ritenuto = {
	\override TextSpanner #'(bound-details left text) = "ritenu"
	\override TextSpanner #'(bound-details right text) = "to"
}
ritardando = {
	\override TextSpanner #'(bound-details left text) = "ritardan"
	\override TextSpanner #'(bound-details right text) = "do"
}
unPocoRitardando = {
	\override TextSpanner #'(bound-details left text) = "un poco ritardan"
	\override TextSpanner #'(bound-details right text) = "do"
}

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

minHairpin = \once \override Hairpin #'minimum-length = #3
