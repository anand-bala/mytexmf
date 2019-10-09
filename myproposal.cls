% vim: set ft=tex

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myproposal}
\LoadClass[11pt, letterpaper, timesnewroman, onecolumn]{article}

% Better fonts with accents
\RequirePackage[T1]{fontenc}

% Math symbols
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{centernot}
\RequirePackage{mathtools}


\RequirePackage[margin=1in]{geometry}
\RequirePackage[colorlinks,linkcolor=black,citecolor=black,urlcolor=black,filecolor=black]{hyperref}

\RequirePackage{graphicx}
\DeclareGraphicsExtensions{.eps,.pdf,.jpeg,.png}

\RequirePackage{fancyhdr}
\pagestyle{fancyplain}
\renewcommand{\headrulewidth}{0pt}
\fancyhf{}
\fancyfoot[R]{\thepage} 

\RequirePackage{titlecaps}
\RequirePackage[explicit]{titlesec}
\titleformat{\section}{\Large\bfseries}{\thesection.}{0.25em}{\titlecap{#1}}[{\titlerule[0.8pt]}]
\titleformat{\subsection}{\large\bfseries}{}{0pt}{\titlecap{#1}}
\titleformat{\subsubsection}{\bfseries}{}{0pt}{\titlecap{#1}}
%\titlespacing*{\section}{0pt}{0.5em}{0.3pt}
%\titlespacing*{\subsection}{0pt}{0.35em}{0pt}
%\titlespacing*{\subsubsection}{0pt}{0.25em}{0pt}

\renewcommand{\title}[1]{\def\@title{\LARGE\bfseries{#1}}}

\usepackage{booktabs}

% ----- Theorem Helpers -------------------------------------------------------

\theoremstyle{definition}
\newtheorem{definition}{Definition}
\newtheorem*{problem}{Problem Statement}

\theoremstyle{plain}
\newtheorem*{theorem*}{Theorem}
\newtheorem{theorem}{Theorem}
\newtheorem*{lemma*}{lemma}
\newtheorem{lemma}{Lemma}
\newtheorem*{assumption}{Assumption}
\newtheorem*{proposition}{Proposition}

\theoremstyle{remark}
\newtheorem*{claim}{Claim}



