\score {
  \new GrandStaff <<
    \new Staff = "violin" {
      \relative c'' {
	\set Staff.instrumentName = #"Violin"
	\set Staff.midiInstrument = #"violin"
				% not strictly necessary, but a good reminder
	\transposition c'
	
	\key c \major
	g4( c8) r c r c4
      }
    }
    \new Staff = "tenor_sax" {
      \relative c' {
	\set Staff.instrumentName = \markup { T.Sax (B\flat) }
	\set Staff.midiInstrument = #"tenor sax"

	% ------------------------------------
	% this transposes the output
	% ------------------------------------	
	\transposition bes,

	\key d \major
	a4( d8) r d r d4
      }
    }
    \new Staff = "tenor_sax_2" {
      % ------------------------------------
      % STEP 1: transpose the whole thing
      % ------------------------------------

      \transpose c d {
	\relative c' {
	  \set Staff.instrumentName = \markup { T.Sax (B\flat) }
	  \set Staff.midiInstrument = #"tenor sax"
          % ------------------------------------
          % STEP 2: transpose the instrument
	  % ------------------------------------
	  \transposition bes,

	  % this is now transposed
	  \key c \major
	  g4( c8) r c r c4
	}
      }
    }
  >>
  \layout {
  }  
  \midi {
    \tempo 4 = 144
  }
}