% vim: set ft=tex nospell

\NeedsTeXFormat{LaTeX2e}
\LoadClassWithOptions{article}
\ProvidesClass{anand-hw}[2019/10/06 Class file for homework assignments]

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
\RequirePackage[inline]{enumitem}

% Nice images, figures
\RequirePackage{graphicx}
\DeclareGraphicsExtensions{.eps,.pdf,.jpeg,.png}
\RequirePackage{wrapfig}

% Nice Algorithms
\RequirePackage{algorithm}
\RequirePackage{algpseudocode}
\newcommand{\algorithmautorefname}{Algorithm}

% Nice tables
\RequirePackage{float}
\RequirePackage{booktabs}

% Conditionals
\RequirePackage{ifthen}

% Links
\RequirePackage[colorlinks,bookmarks=true]{hyperref}

% ----- Custom Commands -------------------------------------------------------

% \providecommand{\title}%
% \renewcommand\title[1]{\def{\@Title}{#1}}
% \providecommand{\author}%
% \renewcommand{\author}[1]{\def\@Author{#1}}%
% \providecommand{\email}%
% \renewcommand{\email}[1]{\def\@Email{#1}}%

\def\@Title{\@title}
\def\@Author{\@author}

% ----- Header & Page Setup ---------------------------------------------------
\RequirePackage[margin=1in]{geometry}

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\@Title}
\fancyfoot[C]{\thepage}


\RequirePackage{titling}
\pretitle{\begin{center}\Large\bfseries}
\posttitle{\par\end{center}}

\setlength{\droptitle}{-20ex}

\setlength{\headheight}{14pt}%

% ----- Custom sections -------------------------------------------------------

\RequirePackage[explicit]{titlesec}
\def\@sectype{Question}
\newcommand{\sectype}[1]{\def\@sectype{#1}}

\titleformat{\section}{\large\bfseries}{\@sectype~\thesection.}{0.25em}{#1}[{\titlerule[0.8pt]}]
\titleformat{\subsection}{\normalfont\bfseries}{Part~(\alph{subsection}).}{0.25em}{\textbf{#1}}
% \titleformat{\subsubsection}{\bfseries}{}{0pt}{\titlecap{#1}}
%\titlespacing*{\section}{0pt}{0.5em}{0.3pt}
%\titlespacing*{\subsection}{0pt}{0.35em}{0pt}
%\titlespacing*{\subsubsection}{0pt}{0.25em}{0pt}

% ----- Theorem Helpers -------------------------------------------------------

\newcommand{\problemname}{Problem Statement}

\theoremstyle{definition}
\newtheorem*{definition}{Definition}
\newtheorem{problem}{\problemname}
\newtheorem{theorem}{Theorem}[section]
\newtheorem{lemma}{Lemma}[section]
\newcommand{\lemmaautorefname}{Lemma}
\newtheorem*{idea}{Idea}
\newtheorem*{analysis}{Analysis}
\newtheorem*{solution}{Solution}

\newtheorem*{notation}{Notation}

\theoremstyle{plain}
\newtheorem*{assumption}{Assumption}
\newtheorem*{proposition}{Proposition}

\theoremstyle{remark}
\newtheorem*{note}{Note}
\newtheorem*{claim}{Claim}
\newtheorem*{remark}{Remark}
\newtheorem{example}{Example}[section]

\renewcommand{\qedsymbol}{$\blacksquare$}%
% Custom proof-like, subproof environment
\newenvironment{subproof}[1][\proofname]{%
  \renewcommand{\qedsymbol}{$\square$}%
  \begin{proof}[#1]%
}{%
  \end{proof}%
  \renewcommand{\qedsymbol}{$\blacksquare$}%
}

% ----- Math stuff ------------------------------------------------------------

\RequirePackage[most]{tcolorbox}
\RequirePackage{empheq}

\numberwithin{equation}{section}

\tcbset{colback=yellow!10!white, colframe=red!50!black,
  highlight math style= {enhanced, colframe=red,colback=red!10!white,boxsep=0pt}
}

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
