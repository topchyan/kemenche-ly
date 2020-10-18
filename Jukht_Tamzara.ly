\version "2.16.0"

i = \context Staff \relative c'' \new Voice = "fiddle" {
    \voiceOne
    \time 2/4 r4 a'\mordent                                      | %1
    \time 3/4 \appoggiatura a8 fis4.\trill e8 fis d              | %2 
    \time 4/4 e8\downbow r e2\downbow   \appoggiatura e8 f8( d)  | %3
              e8\downbow r e2\downbow   \appoggiatura e8 f8( d)  | %4
              e8\downbow r e2.\downbow                           | %5
              e8 r e2\downbow ~ e8 e                             | %6
              e8 r e2\upbow ~ e8 e                               | %7
              a4\mordent \appoggiatura a8 fis4.\trill e8 fis gis | %8 
    \repeat volta 4 {
        \time 2/4 a8(\downbow e) a4\mordent                      | %9
        \time 3/4 \appoggiatura a8 fis4.\trill e8 fis d          | %10
        \time 4/4 e8 r e2    \appoggiatura e8 f8( d)             | %11
                  e8 r e2                  fis8( d)              | %12
                  e8 r e2 ~                e8 f                  | %13
                  e8 r e2 ~                e8 f                  | %14
                  e8 r e2 ~                e8 e                  | %15
    }
    \alternative {
        {      
            a4\mordent \appoggiatura a8 fis4.\trill e8 fis gis   | %16
        }
        {
            a4\mordent \appoggiatura a8 fis4.\trill e8 fis e     | %17
            e2 r                                          \bar "||"%18
        }
    }
}

ii = \context Staff \relative c'' \new Voice = "fiddle" {
    \voiceTwo
    b8 r b4                            |  %1
    b4. b8 b b                         |  %2
    b8 r b c d4\trill r8 b             |  %3
    cis8( d) b( cis d4\trill) r8 b     |  %4
    cis8( d) b( cis d4.\trill c8)      |  %5
    b8 r b( cis d4.\trill) c8          |  %6
    b8 r b( cis d4.\trill) c8          |  %7
    b4 b4. b8 b b                      |  %8
    \repeat volta 4 {
        b4 b                           |  %9
        b4. b8 b b                     |  %10
        b8 r b( cis d4) r8 b           |  %11
        cis8( d) b( cis d4\trill) r8 b |  %12
        cis8( d) b( cis d4.\trill c8)  |  %13
        cis8( d) b( cis d4.\trill c8)  |  %14
        b8 r     b( cis d4.\trill c8)  |  %15
    }
    \alternative {
        {    
           b4 b4. b8 b b               |  %16
        }
        {
           b4 b4. b8 b b               |  %17
           b2 r                 \bar "||" %18
        }
    }
}

music = <<
    \override Score.MetronomeMark #'padding = #5
    \new Staff = "main" {
        \tempo 4 = 112
        \key d \major
        \relative c' {
            
            \set Staff.instrumentName = "Kemenche"
            \set Staff.midiInstrument = "violin"
            
            % Instrumental Introduction
            << { \i }  \new Voice = "drone" { \ii } >>
            
            % Unison solo and kemenche
            %\oneVoice \solo
            
            % Instrumental solo and conclusion
            % << { \iii } \new Voice = "drone" { \iv } >>
            
        }
    }
   %\new Lyrics \lyricsto "singer" \verse
>>

\book {
    \header{
        title       = "Jukht Tamzara * Ջուխթ Թամզարա"
        subtitle    = \markup { \tiny "Black Sea Armenian Dance" }
        subsubtitle = \markup { \tiny "Village Loo, Krasnodar Region, Russia" }
        %instrument = \markup { \tiny "Black Sea Fiddle (Karadeniz Kemencesi, Pontiaki Lyra)" }
        poet        = \markup { \tiny "Composed by Matevos Bichogyan" }
        arranger    = \markup { \tiny "Recorded by Z.Tagakchyan" }
        enteredby   = "Avetik Topchyan"
        date        = "February 2009"
        copyright   = \markup { \tiny "Adapted from \"Hamshen and Hamshen Armenians\" conference materials publication ISBN 978-99930-69-47-8, Yerevan, 2007, p.293" }
    }
    
    \score{
        \music
        \layout{}
    }
    
    \score{
        \applyMusic #unfold-repeats \music
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
