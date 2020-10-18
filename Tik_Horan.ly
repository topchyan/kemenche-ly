\version "2.10.10"

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
        \override Score.MetronomeMark #'padding = #5
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