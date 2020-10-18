\version "2.10.10"

i = \context Staff \relative c'' \new Voice = "fiddle" {
    \voiceOne
    ees16( f) f( ees) d8 d16( f)       | ees8 ees16( d) c8 c        | 
    d16 ( ees) f ( ees) d8 d16 ( f)    | ees ( f) ees ( d) ees8 ees | 
    f8 f16 ees d8.\trill ( f16)        | ees8.\trill  d16 c4        |
    des16  ( e) des ( c) des8 c16 ( a) | bes8 c c8. ( bes16)        |
    des16  ( e) des ( c) des8 c16 ( a) | bes8 c c8. ( bes16)        |
    des16  ( e) des ( c) des8 c16 ( a) | bes8 c c r8                \bar "||"
    
}

ii = \context Staff \relative c'' \new Voice = "fiddle" {
    \voiceTwo
      r8 g8 g g       |  g g g g     | 
      bes g g g       |  c g g g     | 
      g g g r8        |  r4 g        |
      g8 g g g16 ( a) | bes8 g g4    |
      g8 g g g16 ( a) | bes8 g g4    |
      g8 g g g16 ( a) | bes8 g g8 r8 \bar "||"
}

solo = \context Staff \relative c' \new Voice = "singer" {
    c8 f16 ( d) ees8 ees  | ees ees ees r | 
    ees16 ( f) f8 d d     | ees ees ees r | 
    f f16 ( ees) d8 f     | ees ees ees r |
    e16 ( f) f8 d d       | ees ees ees r | 
    c des bes c16 ( a)    | bes8 ( c) c c |
    c des bes c16 ( a)    | bes8 c c r    |
    c des bes c16 ( a)    | bes8 ( c) c c |
    c des bes c16 ( a)    | bes8 c c r    \bar "||"
}

iii = \context Staff \relative c'' \new Voice = "fiddle" {
    \voiceOne
    c16 ( e) des ( c) bes8 c16 ( a) | bes8 c c4       |
    c16 ( e) des ( c) bes8 c16 ( a) | bes8 c c4\trill |
    c16 ( e) des ( c) bes8 c16 ( a) | bes8 c c c      |
    c16 ( e) des ( c) bes8 c16 ( a) | bes8 c c4\trill \bar "||"
    
    c16 ( f) ees ( d)  d8\prall  ees      | d ees ees f              |
    f8 f16 ( ees)  d8 d16 ( f)            | ees8 ees16 ( d) ees8 c   |
    c16 ( f) ees ( d)  d8\prall  d16 ( f) | ees8 ees16 ( d) ees8 f   |
    f8 f16 ( ees)  d8 d16 ( f)            | ees8\prall r ees\prall r |

    f8 des16 ( c) bes8 c16 ( a)       | bes8 c c r       |
    f8\prall des16 ( c) bes8 c16 ( a) | bes8 c c4\prall  |
    c8 c16 ( des) bes8 c16 ( a)       | bes8 c c4\prall  |
    c8 c16 ( des) bes8 c16 ( a)       | bes8 c c r       |
}

iv = \context Staff \relative c'' \new Voice = "fiddle" {
    \voiceTwo
    g8 g bes g | f g g4 |
    f8 g bes g | f g g4 |
    g8 g bes g | f g g4 |
    f8 g bes g | f g g4 | \bar "||"

    g16 ( c) bes ( a)  a8 bes      | a bes bes c            |
    c c16 ( bes)  a8 a16 ( c)      | bes8 bes16 ( a) bes8 g |
    g16 ( c) bes ( a)  a8 a16 ( c) | bes8 bes16 ( a) bes8 c |
    c c16 ( bes)  a8  a16 ( c)     | bes8 r bes r           | 

    c8 aes16 ( g) f8 g | f g g r |
    r8 aes16 ( g) f8 g | f g g4  |
    f8 g16 ( aes) f8 g | f g g4  |
    g8 g16 ( aes) f8 g | f g g r |

}

verse = \lyricmode {
    Do -- ne    da -- ge    | cha -- yir  a      |
    Cheys po -- le -- re    | ba -- yir   a      |
    Do -- ne    da -- ge    | cha -- yir  a      |
    Cheys po -- le -- re    | ba -- yir   a      |

    Ghay -- rad   a -- rek  | agh -- chik -- ner |
    Hays  el -- lu -- shi   | da -- ri -- ya     |
    Ghay -- rad   a -- rek  | agh -- chik -- ner |
    Hays  el -- lu -- shi   | da -- ri -- ya     |
}

music =  <<
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
            \oneVoice \solo
            
            % Instrumental solo and conclusion
            << { \iii } \new Voice = "drone" { \iv } >>
            
            \bar "|."
        }
    }
    \new Lyrics \lyricsto "singer" \verse
>>

#(set-global-staff-size 19)
\book {
    \header{
        title       = "Jeniktsots Topal Bar * Ջենիկցոց Թոպալ Պարը"
        subtitle   = \markup { \tiny "Black Sea Armenian Topal (Lame) Dance" }
        subsubtitle = \markup { \tiny "Samsun, Janik (Canik), Turkey. Sukhum, Abkhazia" }
        %instrument = \markup { \tiny "Black Sea Fiddle (Karadeniz Kemencesi, Pontiaki Lyra)" }
        poet        = \markup { \tiny "Composed by Ohannes Koulian" }
        arranger    = \markup { \tiny "Recorded by Z.Tagakchyan" }
        enteredby   = "Avetik Topchyan"
        date        = "November 2007"
        %tagline = ##f
        copyright   = \markup { \tiny "Adapted from \"Hamshen and Hamshen Armenians\" conference materials publication ISBN 978-99930-69-47-8, Yerevan, 2007, p.298" }
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