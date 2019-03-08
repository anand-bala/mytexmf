\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myhomework}[2019/02/07 A LaTeX class to write homeworks (especially math related)]



\LoadClass[onecolumn]{scrartcl}
% Declare options here
\DeclareOption{twocolumn}{\OptionNotUsed}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\RequirePackage{times}
\RequirePackage{fancyhdr}
\RequirePackage{extramarks}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amsfonts}
\RequirePackage{tikz}
\RequirePackage[plain]{algorithm}
\RequirePackage{algpseudocode}
\RequirePackage{titlesec}
\RequirePackage[hidelinks]{hyperref}

\usetikzlibrary{automata,positioning}


%
% Basic Document Settings
%

\topmargin=-0.45in
\evensidemargin=0in
\oddsidemargin=0in
\textwidth=6.5in
\textheight=9.0in
\headsep=0.25in

\linespread{1.1}

\pagestyle{fancy}
\lhead{\@Author}
\chead{\@Title}
\rhead{ID: \@studentid}
\lfoot{}
\cfoot{\thepage}

\def\@Title{\@title}
\def\@Author{\@author}

\renewcommand\headrulewidth{0.4pt}
\renewcommand\footrulewidth{0.4pt}

\setlength\parindent{0pt}

%
% Create Problem Sections
%

\titleclass{\problem}{straight}[\section]%
\newcounter{problem}%

\titleformat
{\problem} % Command
{\sffamily\normalsize} % Format
{} % Label
{1em} % Horizontal sep
{
    \setcounter{partCounter}{1}
    \textbf{Problem \arabic{problem}.}
} % Before code
[
    \stepcounter{problem}
] % After code

\titlespacing*{\problem}{0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}

\setcounter{secnumdepth}{0}
\newcounter{partCounter}[problem]

\newcommand{\solution}{\textbf{\large Solution}}


% Custom metadata
\newcommand{\hwclass}[1]{\def\@hwclass{#1}}
\newcommand{\hwinstructor}[1]{\def\@hwinst{#1}}
\newcommand{\studentid}[1]{\def\@studentid{#1}}

% \def \@maketitle{%
%     \vspace{2in}
%     \textmd{\textbf{\@hwclass:\ \@title}}\\
%     \vspace{0.1in}\large{Instructor: \textit{\@hwinst}}
%     \thispagestyle{empty}
% }%


\newtheorem{thm}{Theorem}[section]
\newtheorem{lemma}{Lemma}[section]
\newtheorem{prop}{Proposition}[section]
\newtheorem{rem}{Remark}[section]
\newtheorem{clm}{Claim}[section]

\theoremstyle{definition}



