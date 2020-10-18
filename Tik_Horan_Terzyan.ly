 \version "2.10.10"

i = \context Staff \relative c'' \new Voice = "fiddle" {
    \voiceOne
    e4 e                                      | %1
    e8 e e4                                   | %2
    e8 e e e                                  | %3
    g8 g g g                                  | %4
    g4 \times 2/3 { g8 g g }                  | %5
    g4\trill(  f)                             | %6
}

ii = \context Staff \relative c'' \new Voice = "fiddle" {
    \voiceTwo

}

music = <<  
    \override Score.MetronomeMark #'padding = #5
    \new Staff = "main" {
        \tempo 4 = 120
        \key des \minor
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

\book {
    \header{
        title       = "Tik Khoran * Տիկ Խոռան"
        subtitle    = \markup { \tiny "Black Sea Armenian Dance" }
        subsubtitle = \markup { \tiny "Suhum, Abkhazia" }
        %instrument = \markup { \tiny "Black Sea Fiddle (Karadeniz Kemencesi, Pontiaki Lyra)" }
        poet        = \markup { \tiny "Composed by Yeprem  Terzyan" }
        arranger    = \markup { \tiny "Recorded by L.Astvatsatryan" }
        enteredby   = "Avetik Topchyan"
        date        = "February 2009"
        copyright   = \markup { \tiny "Adapted from \"Hamshen and Hamshen Armenians\" conference materials publication ISBN 978-99930-69-47-8, Yerevan, 2007, p.290" }
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