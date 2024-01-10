\ProvidesClass{anand-resume}[2022/09/28 Anand's custom resume class]
\NeedsTeXFormat{LaTeX2e}

\RequirePackage{etoolbox} % Needed for nice control
\RequirePackage{ifthen} % Needed for conditionals

\newbool{my@usesbiblatex}

\DeclareOption{biblatex}{\booltrue{my@usesbiblatex}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}}
\ProcessOptions\relax
\LoadClass{extarticle}

\RequirePackage[english]{babel}  % Set language options
\RequirePackage[utf8x]{inputenc} % Support UTF-8
\RequirePackage{csquotes}  % Set language options
\RequirePackage{microtype}

\RequirePackage{geometry} % Needed for page geometry
\RequirePackage{booktabs}
\RequirePackage{array} % Needed for nice alignments
\RequirePackage{xltabular} % Needed for nice tables
\RequirePackage[inline]{enumitem} % Needed for nice lists
\RequirePackage{hyperref} % Needed for nice links
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{titlesec} % Needed for formatting section titles
\RequirePackage{titling}
% \RequirePackage[urw-garamond]{mathdesign}
\RequirePackage{fontawesome} % Needed for nice icons

\RequirePackage{amstext}
\RequirePackage{amssymb}
\RequirePackage{latexsym}

\RequirePackage{ragged2e} % Disable hyphenation to for machine readers
\RequirePackage{comment} % Needed to ignore things

% Define spacing
\linespread{1.15}
\setlist{nosep}
\setlength{\parindent}{0pt}

% Define page geometry
\geometry{
  top={0.75in},
  bottom={1in},
  left={0.5in},
  right={0.5in},
}

% Make lists with smarter margins
\setlist[itemize]{leftmargin=*}
\newlist{myitemize}{itemize}{2}
\setlist[myitemize]{label=\textbullet,labelindent=0pt,labelsep=1em,leftmargin=*}

% Disable page numbering
\pagenumbering{gobble}

% Define custom commands
\newcommand{\email}[1]{%
  \def\@email{#1}%
  \def\@emaillink{mailto:#1}%
}
\newcommand{\website}[1]{%
  \def\@website{#1}%
  \def\@websitelink{https://#1}
}
\newcommand{\github}[1]{%
  \def\@github{github.com/#1}%
  \def\@githublink{https://github.com/#1}%
}
\newcommand{\dblp}[1]{%
  \def\@dblp{dblp.org/pid/#1}%
  \def\@dblplink{https://dblp.org/pid/#1.html}%
}
\newcommand{\dblplink}{%
  \ifdef{\@dblplink}{\href{\@dblplink}{\@dblp}}{}
}

\newcommand{\mylocation}[1]{%
  \def\@mylocation{#1}
}

\newcommand{\@ifsociallink}[3]{\ifdef{#1}{\texttt{\faicon{#2}~{#3}}~}{}}

% Link specific commands
\newcommand{\githublink}[1]{\href{https://github.com/#1}{\small\texttt{[GitHub:#1]}}}

% Define maketitle
% \begin{noindent}
\pretitle{}
\posttitle{}
\preauthor{\begin{flushleft}\LARGE\bfseries}
\postauthor{\end{flushleft}}
\renewcommand{\maketitlehookc}{%
  \@ifsociallink{\@email}{envelope}{\@email}
  \@ifsociallink{\@website}{link}{\href{\@websitelink}{\@website}}
  \@ifsociallink{\@github}{github}{\href{\@githublink}{\@github}}
  \ifdef{\@mylocation}{\newline
    \texttt{\faLocationArrow}~\@mylocation
  }
}
\renewcommand{\maketitlehookd}{%
  \par\rule{\linewidth}{1pt}
}
\predate{}
\postdate{}

% \end{noindent}

\AtBeginDocument{
  \hypersetup{
    pdftitle = {\thetitle},
    pdfauthor = {\theauthor},
  }
  \global\let\@title\@empty
}

% Format Sections
\titlespacing*{\section}{0pt}{8pt}{6pt}
\titleformat{\section}
{\scshape\raggedright} % Format
{}{0em} % Spacing
{} % Before code
[\titlerule] % After code

\titlespacing*{\subsection}{0pt}{6pt}{1pt}
\titleformat{\subsection} % TODO: Change how it looks
{\normalsize\bf\raggedright}
{}{0em}
{}

% -----------------------------------------------------------------------------
% Custom Bibliography stuff
% -----------------------------------------------------------------------------

\ifbool{my@usesbiblatex}{%
  \RequirePackage{biblatex}
  % Commands for Bibliography
  \newcommand*{\cvcategory}[1]{%
    \forcsvlist{\addtocategory{#1}}}

  % \defbibcheck{annoteposter}{\iffieldequalstr{annotation}{Poster}{}{\skipentry}}

  \DefineBibliographyStrings{english}{%
    inpreparation	   = {in prep\adddot}, }

  \DeclareLabeldate{%
    \field{date}
    \field{eventdate}
    \field{origdate}
    \field{urldate}
    \field{pubstate}   % <-- NEW
    \literal{nodate}
  }

  \DeclareFieldFormat{labelnumberwidth}{\mkbibbold{$\bullet$}}

  % Custom Sorting 
  \DeclareSortingTemplate{ymdnt}{%
    \sort{\field{presort}}
    \sort[final]{\field{sortkey}}
    \sort[direction=descending]{%
      \field{sortyear}
      \field{year}
      \literal{9999}
    }
    \sort[direction=descending]{%
      \field[padside=left,padwidth=2,padchar=0]{month}
      \literal{99}
    }
    \sort[direction=descending]{%
      \field[padside=left,padwidth=2,padchar=0]{day}
      \literal{99}
    }
    \sort{%
      \field{sortname}
      \field{author}
      \field{editor}
      \field{translator}
      \field{sorttitle}
      \field{title}
    }
    \sort{%
      \field{sorttitle}
    }
    \sort{%
      \field[padside=left,padwidth=4,padchar=0]{volume}
      \literal{9999}
    }
  }
}{
}
