\version "2.16.0"

i = \context Staff \relative c'' \new Voice = "fiddle" {
    \voiceOne
    d8 d16( ees) c8 c16( d)  bes4 c8 d                      |
    d16 ees d ees  c8 c16( d)  bes8.( c16) bes( a) g8       |
    d'8 d16( ees) c8 c16( d)  bes4 c8 d16( ees)             |
    ees( f) ees( f) d( ees) c( d)  bes8.( c16) bes a g8     |
    d'16( ees) d8 c c16( d) bes8.( c16) bes16( a) g8        |
    bes8.( c16) bes8 aes g4 bes8 c                          |
    d16( ees) d ees c d c d bes8.( c16) bes16( aes) g8      |
    bes8.( g16) a( bes) a( g) g4 g8 g                 \bar "||"
    d'16( ees) d( ees) c8 c16( d) bes4 c8 d16( ees)         |
    d( ees) d( ees) c8 c16( d) bes8.( c16) bes16( a) g8     |
    d'16( ees) d( ees) c8 c16( d) bes4 c8 d16( ees)         |
    d( ees) d( ees) c8 c16( d) bes8.( c16) bes16( a) g8     |
    d'16( ees) d( ees) c8 c16( d) bes8.( c16) bes16( a) g8  |
    bes8.( g16) bes8 aes g4 d'8 d                           |
    d16( ees) d( ees) c8 c16( d) bes8.( c16) bes16( aes) g8 |
    bes8.( g16) bes16( c) bes( a) g8 g r4                   |
    \bar "||"
    
}

ii = \context Staff \relative c'' \new Voice = "fiddle" {
    \voiceTwo
    r8 g r  g   g4 r8 g       |
    r  g r  g ees4 r8 d       |
    g  g r  g   g4 r8 g       |
    r4   r r8   g  g  d       |
    r4   r      r     r       | 
    r    r      d  g8 g       |
    g8 r g r    r4   r        |
    r    r      r  r8 d \bar "||"
    r4   r      d4  r8 g      |
    r  g r g    ees4  r8 d    |
    r  g r4     ees g8 r      |
    r4  r       ees r8 d      |
    g r r4      r4 r8  d      |
    ees r ees r d4 r8 d       |
    r4  r ees4 r8 d           |
    r4  r4 r8 d r4
    \bar "||"
}

music = <<
    \override Score.MetronomeMark #'padding = #5
    \new Staff = "main" {
        \tempo 4 = 120
        \key bes \major
        \time 4/4
        \relative c' {
            
            \set Staff.instrumentName = "Kemenche"
            \set Staff.midiInstrument = "violin"
            
            % Instrumental Introduction
            << { \i }  \new Voice = "drone" { \ii } >>
            
            % Unison solo and kemenche
            %\oneVoice \solo
            
            % Instrumental solo and conclusion
            % << { \iii } \new Voice = "drone" { \iv } >>
            
            \bar "|."
        }
   }
   %\new Lyrics \lyricsto "singer" \verse
>>

\book {
    \header{
        title       = "Haysi Serabar * Հայսի Սըրաբար"
        subtitle    = \markup { \tiny "Black Sea Armenian Dance" }
        subsubtitle = \markup { \tiny "Village Loo, Krasnodar Region, Russia" }
        %instrument = \markup { \tiny "Black Sea Fiddle (Karadeniz Kemencesi, Pontiaki Lyra)" }
        poet        = \markup { \tiny "Composed by Andranik Zabunyan" }
        arranger    = \markup { \tiny "Recorded by Z.Tagakchyan" }
        enteredby   = "Avetik Topchyan"
        date        = "February 2009"
        copyright   = \markup { \tiny "Adapted from \"Hamshen and Hamshen Armenians\" conference materials publication ISBN 978-99930-69-47-8, Yerevan, 2007, p.302" }
    }
    \score{
        \music
        \layout{}
    }
    \score{
        \unfoldRepeats \music
        \midi{}
    }
}

%{
convert-ly (GNU LilyPond) 2.16.2  convert-ly: Processing `'...
Applying conversion: 2.11.2, 2.11.3, 2.11.5, 2.11.6, 2.11.10, 2.11.11,
2.11.13, 2.11.15, 2.11.23, 2.11.35, 2.11.38, 2.11.46, 2.11.48,
2.11.50, 2.11.51, 2.11.52, 2.11.53, 2.11.55, 2.11.57, 2.11.60,
2.11.61, 2.11.62, 2.11.64, 2.12.0, 2.12.3, 2.13.0, 2.13.1, 2.13.4,
2.13.10, 2.13.16, 2.13.18, 2.13.20, 2.13.27, 2.13.29, 2.13.31,
2.13.36, 2.13.39, 2.13.40, 2.13.42, 2.13.44, 2.13.46, 2.13.48,
2.13.51, 2.14.0, 2.15.7, 2.15.9, 2.15.10, 2.15.16, 2.15.17, 2.15.18,
2.15.19, 2.15.20, 2.15.25, 2.15.32, 2.15.39, 2.15.40, 2.15.42,
2.15.43, 2.16.0
%}
