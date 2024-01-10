% vim: set ft=tex nospell

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{anand-reviews}[2019/02/07 A LaTeX class to write reviews]

% Conditionals
\RequirePackage{ifthen}
\newboolean{secnumber}
\setboolean{secnumber}{false}

\DeclareOption{twocolumn}{\OptionNotUsed}
\DeclareOption{secnumber}{\setboolean{secnumber}{true}}
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
\RequirePackage{amssymb}
\RequirePackage{centernot}
\RequirePackage{mathtools}

% For multicol stuff
\RequirePackage{multicol}
\RequirePackage{tasks}

% Nice lists
\RequirePackage{enumerate}
% \RequirePackage{enumitem}

% Nice images, figures
\RequirePackage{graphicx}
\DeclareGraphicsExtensions{.eps,.pdf,.jpeg,.png}
\RequirePackage{wrapfig}

% Nice Algorithms
\RequirePackage{algorithm}
\RequirePackage{algpseudocode}

% Nice tables
\RequirePackage{float}
\RequirePackage{booktabs}


% ----- Custom Commands -------------------------------------------------------

\def\@Title{\@title}
\def\@Author{\@author}

% ----- Header & Page Setup ---------------------------------------------------
\RequirePackage[margin=1in]{geometry}

% \RequirePackage{fancyhdr}
% \pagestyle{fancy}
% \fancyhf{}
% \fancyfoot[R]{\rightmark}
% \fancyfoot[L]{\thepage}
%
% \fancyhead[C]{\@Title}


\RequirePackage{titling} 
\pretitle{\begin{center}\Large\bfseries}
\posttitle{\par\end{center}}

\setlength{\droptitle}{-15ex}

\setlength{\headheight}{14pt}%

% ----- Custom sections -------------------------------------------------------
\RequirePackage{titlecaps}
\RequirePackage[explicit]{titlesec}

\ifthenelse{\boolean{secnumber}}{%
\titleformat{\section}{\large\bfseries}{\thesection.}{0.25em}{\titlecap{#1}}
}%
{%
  \titleformat{\section}{\large\bfseries}{}{0pt}{\underline{\textsc{#1}}}
}
\titleformat{\subsection}[runin]{\bfseries}{}{0.5em}{\titlecap{#1}.}
% \titleformat{\subsubsection}{\bfseries}{}{0pt}{\titlecap{#1}}
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
\newtheorem*{remark*}{Remark}


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


