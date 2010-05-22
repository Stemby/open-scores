\version "2.10.14"

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
	maintainerEmail = "carlo.stemberger@tiscali.it"
	lastupdated = "???"
 footer = "???"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
%} }

% General markings and annotations for each movement

mvmttext = {
	\once \override TextScript   #'padding = #'2.5
	\once \override TextScript   #'extra-offset = #'(-3.5 . 0)
	\once \override TextScript   #'font-size = #1
	\once \override TextScript   #'font-series = #'bold
	\override Score.MetronomeMark   #'transparent = ##t
}

mI = \context Voice {
	\time 4/4
	\mvmttext
	s4^\markup {
		"Andante espressivo ("
		\smaller \general-align #Y #DOWN \note #"4" #1
		"= 60 )"
	} s4 s2 | s1*6 |
	\time 3/4
	\mvmttext
	s4^\markup {
		"Allegro molto moderato ("
		\smaller \general-align #Y #DOWN \note #"2." #1
		"= 60 )"
	} s4 %| s2.*? |
	%\bar "|."
}

mII = \context Voice {
	\time 3/8
	\mvmttext
	s4^\markup {
		"Assai agitato ("
		\smaller \general-align #Y #DOWN \note #"4." #1
		"= 136 )"
	} s8 | s4.*98 |
	\time 2/4
	\mvmttext
	s4^\markup {
		"L'istesso tempo"
	} s4 | s2*48 |
	\time 3/8
	\mvmttext
	s4^\markup {
		"Un poco adagio ("
		\smaller \general-align #Y #DOWN \note #"4." #1
		"= 76 )"
	} s8 | s4.*47 |
	\time 3/4
	\mvmttext
	\cadenzaOn
	s4^\markup {
		"Tempo risoluto ("
		\smaller \general-align #Y #DOWN \note #"4" #1
		"= 144 )"
	} \cadenzaOff
	\bar "|"
	s2.*65
	\bar "|."
}
