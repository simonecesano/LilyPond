\bookpart {
  \score {
    \new PianoStaff <<
	\new Staff = "up" {
	  %----------------    
	  \transpose c c'  {
	    % --------------------------------------------------------
	    % this makes it so that time signature is not printed
	    % --------------------------------------------------------
	    \override Staff.TimeSignature #'stencil = ##f
	    
	    % --------------------------------------------------------
	    % this makes it so that accidents are printed every time
	    % --------------------------------------------------------
	    % #(set-accidental-style 'forget)

	    % --------------------------------------------------------
	    % these hide / unhide notes 
	    % --------------------------------------------------------
	    % \hideNotes
 	    % \unHideNotes

	    <c e g>      % C
	    <cis e g a>  % A7
	    <d f a c'>   % Dm7
	    <d f g b>    % G7
	    
	    <c e g>      % C
	    <b, d e gis> % E7
	    <a, c e g>   % Am
	    <f, a, c e>  % F
	    
	    <c e g>        % C
	    <b, dis fis a> % B7
	    <b, e g>       % Em
	    <f, a, c e>    % F

	    <g, b, d g>  % G
	    <g, b, d f>  % G7
	    <g, c e>2    % C
	  }
	}

	\new Staff = "down" {
	  \transpose c c  {
	    \override Staff.TimeSignature #'stencil = ##f
	    \clef bass
	    % #(set-accidental-style 'forget)

	    c4
	    cis
	    d
	    g,
	    
	    g,
	    gis,
	    a,
	    f,

	    c
	    b,
	    e,
	    f,

	    d,
	    g,

	    c,2
	  }
	}
	>>
    \layout {
      indent = #0
      \context {
        % --------------------------------------------------------
	% this ensures sufficient spacing
	% it's not entirely clear how that works
	% --------------------------------------------------------
	\Score \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/1000)
      }
    }
    \midi {
      \tempo 4 = 72
    }
    
  }
}
