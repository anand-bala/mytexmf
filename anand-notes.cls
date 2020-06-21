% vim: set ft=tex nospell

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{anand-notes}[2019/02/07 A LaTeX class to write notes]

% Conditionals
\RequirePackage{ifthen}
\newboolean{nosecnumber}
\setboolean{nosecnumber}{false}

\DeclareOption{twocolumn}{\OptionNotUsed}
\DeclareOption{nosecnumber}{\setboolean{nosecnumber}{true}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass[onecolumn]{article}

% ----- Packages --------------------------------------------------------------

% Better fonts with accents
\RequirePackage[T1]{fontenc}

% Math symbols
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amsthm}
\RequirePackage{mathtools}

% For multicol stuff
\RequirePackage{multicol}
\RequirePackage{tasks}

% Nice lists
\RequirePackage{enumerate}
\RequirePackage{enumitem}

% Nice images, figures
\RequirePackage{graphicx}
\DeclareGraphicsExtensions{.eps,.pdf,.jpeg,.png}
\RequirePackage{wrapfig}

% Nice tables
\RequirePackage{float}
\RequirePackage{booktabs}

% Links
\RequirePackage[
  colorlinks,
  linkcolor=black,
  citecolor=black,
  urlcolor=black,
  filecolor=black,
  bookmarks=false
]{hyperref}

% ----- Custom Commands -------------------------------------------------------

\def\@Title{\@title}
\newcommand\runningtitle[1]{\def\@Title{#1}}
\def\@Author{\@author}
\newcommand\runningauthor[1]{\def\@Author{#1}}

% ----- Header & Page Setup ---------------------------------------------------
\RequirePackage[margin=1in]{geometry}

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[RE]{\@Author}
\fancyhead[LO]{\@Title}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0.5pt}

\RequirePackage{titling} 
\pretitle{\begin{center}\Large\bfseries}
\posttitle{\par\end{center}}

\setlength{\droptitle}{-15ex}

\setlength{\headheight}{14pt}%

% ----- Custom sections -------------------------------------------------------

\RequirePackage{titlecaps}
\RequirePackage[explicit]{titlesec}

\ifthenelse{\boolean{nosecnumber}}{%
\titleformat{\section}{\Large\bfseries}{}{0.25em}{\titlecap{#1}}[{\titlerule[0.8pt]}]
}%
{%
\titleformat{\section}{\Large\bfseries}{\thesection.}{0.25em}{\titlecap{#1}}[{\titlerule[0.8pt]}]
}
\titleformat{\subsection}{\large\bfseries}{}{0pt}{\titlecap{#1}}
\titleformat{\subsubsection}{\bfseries}{}{0pt}{\titlecap{#1}}
%\titlespacing*{\section}{0pt}{0.5em}{0.3pt}
%\titlespacing*{\subsection}{0pt}{0.35em}{0pt}
%\titlespacing*{\subsubsection}{0pt}{0.25em}{0pt}

% ----- Formalism Helpers -----------------------------------------------------

\newcommand{\problemname}{Problem Statement}

\theoremstyle{definition}
\newtheorem{definition}{Definition}
\newtheorem*{definition*}{Definition}
\newtheorem*{problem}{\problemname}
\newtheorem*{notation}{Notation}
\newtheorem{hypothesis}{Hypothesis}[section]
\newtheorem{theorem}{Theorem}[section]
\newtheorem{lemma}[theorem]{Lemma}

\theoremstyle{plain}
\newtheorem*{assumption}{Assumption}
\newtheorem{proposition}{Proposition}[section]
\newtheorem*{proposition*}{Proposition}

\theoremstyle{remark}
\newtheorem{claim}{Claim}[section]
\newtheorem*{claim*}{Claim}
\newtheorem*{remark}{Remark}


% ----- Math stuff ------------------------------------------------------------

\RequirePackage[most]{tcolorbox}
\RequirePackage{empheq}

\newenvironment{emphalign}{%
  \empheq{align}
}{\endempheq}

\tcolorboxenvironment{emphalign}{colback=yellow!10!white, colframe=red!50!black, 
  highlight math style= {enhanced,colframe=red,colback=red!10!white,boxsep=0pt}
}

\newenvironment{emphalign*}{%
  \empheq{align*}
}{\endempheq}

\tcolorboxenvironment{emphalign*}{colback=yellow!10!white, colframe=red!50!black, 
  highlight math style= {enhanced,colframe=red,colback=red!10!white,boxsep=0pt}
}
% ----- For usage with pandoc converted documents -----------------------------

\providecommand{\tightlist}{%
  \setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}}

% ----- END CLASS -------------------------------------------------------------
\endinput


