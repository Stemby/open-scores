\version "2.12.0"

\header {
	title = "Quartett A-dur"
	subtitle = "Op.41 n.3"
	composer = "Robert Schumann"

	%{ mutopiatitle = "String quartet in A major"
	mutopiacomposer = "???"
	mutopiaopus = "???"
	mutopiainstrument = "String Quartet"
	date = "???"
	source = "Eulenburg, before 1918"
	style = "???"
	copyright = "Creative Commons Attribution-ShareAlike 2.5"
	maintainer = "Carlo Stemberger"
	maintainerEmail = "carlo.stemberger@gmail.com"
	lastupdated = "???"
 footer = "???"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
%} }

% General markings and annotations for each movement

mI = \context Voice {
	\time 4/4
	\tempo "Andante espressivo" 4 = 60
	s1*7 |
	\time 3/4
	\tempo "Allegro molto moderato" 2. = 60
	%s2.*? |
	%\bar "|."
}

mII = \context Voice {
	\time 3/8
	\tempo "Assai agitato" 4. = 136
	s4.*99 |
	\time 2/4
	\tempo "L'istesso tempo"
	s2*49 |
	\time 3/8
	\tempo "Un poco Adagio" 4. = 76
	s4.*48 |
	\time 3/4
	\tempo "Tempo risoluto" 4 = 144
	\cadenzaOn
	s4
	\cadenzaOff
	\bar "|"
	s2.*65 |
	\bar "|."
}
