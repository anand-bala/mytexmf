\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mynotes}[2019/02/07 A LaTeX class to write notes]



\LoadClass[onecolumn]{article}
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
\chead{\textbf{\Large\@Title}}
\cfoot{\thepage}

\def\@Title{\@title}
\def\@Author{\@author}

\renewcommand\headrulewidth{0.4pt}
\renewcommand\footrulewidth{0.4pt}

\setlength\parindent{0pt}

\newtheorem{theorem}{Theorem}[section]
\newtheorem{lemma}{Lemma}[section]
\newtheorem{proposition}{Proposition}[section]
\newtheorem{remark}{Remark}[section]
\newtheorem{claim}{Claim}[section]
\newtheorem{definition}{Definition}[section]
\newtheorem{example}{Example}[section]

\theoremstyle{definition}



