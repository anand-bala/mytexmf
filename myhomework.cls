\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myhomework}[2019/02/07 A LaTeX class to write homeworks (especially math related)]



\LoadClass[onecolumn]{article}
% Declare options here
\DeclareOption{twocolumn}{\OptionNotUsed}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\RequirePackage{fancyhdr}
\RequirePackage{extramarks}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amsfonts}
\RequirePackage{tikz}
\RequirePackage[plain]{algorithm}
\RequirePackage{algpseudocode}
\RequirePackage[loadonly]{titlesec}
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

\renewcommand\headrulewidth{0.4pt}
\renewcommand\footrulewidth{0.4pt}

% \setlength\parindent{0pt}

%
% Create Problem Sections
%

\titleclass{\problem}[0]{straight}%
\newcounter{problem}%

\titleformat
{\problem} % Command
{\sffamily\Large} % Format
{\textbf{Problem \arabic{problem}.}} % Label
{-0.67em} % Horizontal sep
{
    \setcounter{partCounter}{1}
} % Before code
[
] % After code

\titlespacing*{\problem}{0pt}{3.25ex plus 1ex minus .2ex}{1.5ex plus .2ex}

\setcounter{secnumdepth}{0}
\newcounter{homeworkProblemCounter}
\setcounter{homeworkProblemCounter}{1}
\newcounter{partCounter}[problem]

\newenvironment{homeworkProblem}[1][-1]{
    \ifnum#1>0
        \setcounter{homeworkProblemCounter}{#1}
    \fi
    \section{Problem \arabic{homeworkProblemCounter}}
    \setcounter{partCounter}{1}
}{
}



% Custom metadata
\newcommand{\Title}[1]{\def\@Title{#1}}
\newcommand{\Author}[1]{\def\@Author{#1}\author{#1}}
\newcommand{\hwclass}[1]{\def\@hwclass{#1}}
\newcommand{\hwinstructor}[1]{\def\@hwinstructor{#1}}
\newcommand{\studentid}[1]{\def\@studentid{#1}}

\title{
    \vspace{2in}
    \textmd{\textbf{\@hwclass:\ \@Title}}\\
    \vspace{0.1in}\large{Instructor: \textit{\@hwinstructor}}
}

\numberwithin{equation}{problem}

\theoremstyle{definition}

\newtheorem{definition}{Definition}[problem]
\newtheorem{theorem}{Theorem}[problem]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}{Proposition}[problem]
\newtheorem{claim}{Claim}[problem]
\newtheorem{assumption}{Assumption}[problem]
\newcommand{\solution}{\vspace{0.2in}\textbf{\large Solution}}

\theoremstyle{remark}
\newtheorem{remark}{Remark}




