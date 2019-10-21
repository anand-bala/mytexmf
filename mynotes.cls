% vim: set ft=tex
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mynotes}[2019/02/07 A LaTeX class to write notes]
\PassOptionsToClass{onecolumn,timesnewroman}{article}
\LoadClassWithOptions{article}

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


% Nice lists
\RequirePackage{enumerate}
\RequirePackage{enumitem}

% Nice images, figures, and listings
\RequirePackage{graphicx}
\DeclareGraphicsExtensions{.eps,.pdf,.jpeg,.png}
\RequirePackage{grffile}
\RequirePackage[all]{xy}
\RequirePackage{wrapfig}
\RequirePackage{fancyvrb}
\RequirePackage{listings}

% Nice tables
\RequirePackage{float}
\RequirePackage{booktabs}

% Conditionals
\RequirePackage{ifthen}

% Links
\RequirePackage[colorlinks,linkcolor=black,citecolor=black,urlcolor=black,filecolor=black,bookmarks=false]{hyperref}

% ----- Header & Page Setup ---------------------------------------------------

\RequirePackage[margin=1in]{geometry}

\RequirePackage{fancyhdr}
\pagestyle{fancyplain}
\renewcommand{\headrulewidth}{0pt}
\fancyhf{}
\fancyfoot[R]{\thepage} 

% ----- Custom sections -------------------------------------------------------

\RequirePackage{titlecaps}
\RequirePackage[explicit]{titlesec}
\titleformat{\section}{\Large\bfseries}{\thesection.}{0.25em}{\titlecap{#1}}[{\titlerule[0.8pt]}]
\titleformat{\subsection}{\large\bfseries}{}{0pt}{\titlecap{#1}}
\titleformat{\subsubsection}{\bfseries}{}{0pt}{\titlecap{#1}}
%\titlespacing*{\section}{0pt}{0.5em}{0.3pt}
%\titlespacing*{\subsection}{0pt}{0.35em}{0pt}
%\titlespacing*{\subsubsection}{0pt}{0.25em}{0pt}

% \renewcommand{\title}[1]{\def\@title{\LARGE\bfseries{#1}}}

% ----- Formalism Helpers -----------------------------------------------------

\newcommand{\problemname}{Problem Statement}

\theoremstyle{definition}
\newtheorem{definition}{Definition}
\newtheorem*{definition*}{Definition}
\newtheorem*{problem}{\problemname}

\theoremstyle{plain}
\newtheorem{hypothesis}{Hypothesis}[section]
\newtheorem{theorem}{Theorem}[section]
\newtheorem{lemma}[theorem]{Lemma}
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


