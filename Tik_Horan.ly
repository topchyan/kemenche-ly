\version "2.20.0"

i = \context Staff \relative c'' \new Voice = "fiddle" {
    \voiceOne
    c8 c c\trill c16( d)                 | c16( g) c( g) c8 r             | 
    c16( g) c( g) c8\trill c16( d)       | c8 c c4                        | 
    c16( g) c( g) c4\trill               | a16( bes) c8 c c16( f)         | 
    ees16( d) c8 c4\trill                | a16( bes) c( bes) bes16( c8.)  | 
    c8 c c4\trill                        | a16( bes) c8 c c16( f)         |
    ees16( d) c8 c r                     | r4 r16 f8.              \bar "||" 
    f8 f f16( ees) f8                    | f16( d) ees( f) ees( d)  d8    | 
    c c c a16( bes)                      | c8 c c4                        | 
    bes16( a) bes8 f'16( ees) f8         | f8 f f16( ees) f8              | 
    f16( d) ees( f) ees( d)  d8          | c c c a16( bes)                |
    c8 c c4  \repeat volta 2             {  bes8 bes f'16( d) ees( f)     | 
    ees8 ees16( f) \appoggiatura ees8 d4 | bes8 bes16( a) \appoggiatura bes8 c4 | 
    c8 c c4                              } c8 c16( f) c4                  |
    f8 c16( f) c16( f8.)                 | c8 c16( f) c4                  |
    f8 c16( f) c16( f8.)                 | c8 c16( f) c4                  |
    f8 c16( f) c16( f8.                  | f8) g, g r                     |
    g8 g g16 bes8.(                      | bes8) aes aes4                 |
    aes8 bes bes16( aes) aes( bes)       | aes( g) g8 g4                  | g8 g g4  |
    aes8 bes bes16( aes) aes( bes)       | aes( g) g8 g4                  |
    g8 <g c> <g c>16 bes <g bes> c       | <g c>8 <g c>16 f' <g, c>4      |
    g8 <g c> <g c>16 bes <g bes> c       | <g c>8 <g c>16 f' <g, c>4      |
    g8 <g c> <g c>16 bes <g bes> c       | <g c>8 <g c>16 f' <g, c>8 r    | 
    g g g16 bes8.                        | bes8 aes aes r                 |
    aes8 bes16 aes bes aes aes bes       | bes aes g8 g4                  |
    \bar "||"
    
}

ii = \context Staff \relative c'' \new Voice = "fiddle" {
    \voiceTwo
    g8 r g r                             | r16 g g8 r g16( g)            | 
    r16 g g8 r g8                        | g16( a) bes( g) a16 bes8.     | 
    a8 g g4                              | g8 r a g                      | 
    bes g g4                             | g8 g g4                       | 
    g8 g g4                              | g8 r a g                      |
    bes g g r                            | bes bes bes16 bes8.    \bar "||" 
    a8 a a16 g a8                        | a a a a                       | 
    a16( bes) a( g) g8 g                 | g8 g g4                       | 
    f16( f) f8 bes bes                   | bes bes bes16( bes) bes8      | 
    bes bes bes bes                      | a16( bes) a( g) g8 g          |
    g8 g g4   \repeat volta 2            { f8 f bes bes                  | 
    bes bes a4                           | g8 g g4                       | 
    g8 g g4                              } g8 g g4                       |
    g8 g g4                              | g8 g g4                       |
    g8 g g4                              | g8 g g4                       |
    g8 g g4(                             | g8) d d  r                    |
    f8 f e16 f8.(                        | f8) ees ees4                  | 
    ees8 f f16( ees) ees( f)             | ees   d d8 d4                 | d8 d d4 |
    ees8 f f16( ees) ees( f)             | ees8  d    d4                 |
    g8 f f r                             | f f f r                       |
    g8 f f r                             | f f f r                       |
    f8 f r4                              | f8 f f r                      |
    f f ees16 f8.                        | f8 ees ees r                  |
    ees16 f f8 f16 ees ees f             | ees8 d d4                     |    
    \bar "||"
}


\book {
    \header{
        title       = "Tik Khoran * Տիկ Խոռան"
        subtitle    = \markup { \tiny "Black Sea Armenian Dance" }
        subsubtitle = \markup { \tiny "Village Loo, Krasnodar Region, Russia" }
        %instrument = \markup { \tiny "Black Sea Fiddle (Karadeniz Kemencesi, Pontiaki Lyra)" }
        poet        = \markup { \tiny "Composed by Andranik Zabunyan" }
        arranger    = \markup { \tiny "Recorded by Z.Tagakchyan" }
        enteredby   = "Avetik Topchyan"
        date        = "February 2009"
        copyright   = \markup { \tiny "Adapted from \"Hamshen and Hamshen Armenians\" conference materials publication ISBN 978-99930-69-47-8, Yerevan, 2007, p.289" }
    }
    \score{<<
        \override Score.MetronomeMark.padding = #5
        \new Staff = "main" {
            \tempo 4 = 120
            \key bes \major
            \time 2/4
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
     \layout{}
     \midi{}
     }
}

%{
convert-ly (GNU LilyPond) 2.20.0  convert-ly: Processing `'...
Applying conversion: 2.11.2, 2.11.3, 2.11.5, 2.11.6, 2.11.10, 2.11.11,
2.11.13, 2.11.15, 2.11.23, 2.11.35, 2.11.38, 2.11.46, 2.11.48,
2.11.50, 2.11.51, 2.11.52, 2.11.53, 2.11.55, 2.11.57, 2.11.60,
2.11.61, 2.11.62, 2.11.64, 2.12.0, 2.12.3, 2.13.0, 2.13.1, 2.13.4,
2.13.10, 2.13.16, 2.13.18, 2.13.20, 2.13.27, 2.13.29, 2.13.31,
2.13.36, 2.13.39, 2.13.40, 2.13.42, 2.13.44, 2.13.46, 2.13.48,
2.13.51, 2.14.0, 2.15.7, 2.15.9, 2.15.10, 2.15.16, 2.15.17, 2.15.18,
2.15.19, 2.15.20, 2.15.25, 2.15.32, 2.15.39, 2.15.40, 2.15.42,
2.15.43, 2.16.0, 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29,
2.17.97, 2.18.0, 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22, 2.19.24,
2.19.28, 2.19.29, 2.19.32, 2.19.40, 2.19.46, 2.19.49, 2.19.80, 2.20.0
%}
