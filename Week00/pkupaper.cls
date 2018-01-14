%% PKU-style paper class
%
%% pkupaper.cls
%
%% Copyright 2017 pppppass
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2005/12/01 or later.
%
% This work has the LPPL maintenance status `maintained'.
% 
% The Current Maintainer of this work is pppppass
% (lzh2016p@pku.edu.cn).
%
% Lists of contents of this work and modification information can be
% found in
%   pkupaper.manifest.md
% and an introduction is included as well.
%
% This file cannot be typeset directly. When using this file
% by \documentclass{...}, it is recommended to typeset with LuaLaTeX.

% Identification
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pkupaper}[2017/12/15 PKU-style paper class]

% Declaration of options
\DeclareOption{english}{\def\pkupaper@english{\relax}}
\ProcessOptions\relax

% Pass options
\PassOptionsToPackage{no-math}{fontspec}
\ifdefined\pkupaper@english%
\PassOptionsToClass{scheme=plain}{ctexart}%
\fi

% Load basic class
\LoadClass[UTF8, zihao=-4, twoside]{ctexart}[2011/03/11]

% Load packages
\RequirePackage{ifpdf, ifxetex}
\RequirePackage{geometry}
\RequirePackage[defaultsups]{newtxtext}
\RequirePackage{newtxmath}
\RequirePackage{tikz}
\RequirePackage[cleardoublepage = current]{scrextend}
\RequirePackage[titles]{tocloft}
\RequirePackage{caption, subcaption}
\RequirePackage{setspace}
\RequirePackage{fancyhdr}
\RequirePackage{hyperref}
\RequirePackage{enumitem}

% Footnote circles
\newcommand*\pkupaper@int@circled[1]{%
	\scalebox{0.8}{\tikz[baseline = (char.base)]{
		\node[
			shape = circle, draw = black, minimum size = 1.25em, inner sep = 0pt
		] (char) {#1};
	}}%
}
\renewcommand\thefootnote%
	{\protect\pkupaper@int@circled{\arabic{footnote}}}
\deffootnote{2\ccwd}{3.5\ccwd}{\thefootnotemark\hspace{0.75\ccwd}}

% Set linespread
\linespread{1.39}\selectfont

% Set captions
\DeclareCaptionFont{cfive}{\zihao{5}}
\DeclareCaptionLabelSeparator{quad}{\quad}
\captionsetup{font = cfive, labelsep = quad}

% Set enumrate environments
\setlist{nolistsep}

% tocloft settings
\renewcommand{\numberline}[1]{%
	\settowidth\@tempdimb{#1\hspace{0.5em}}%
	\ifdim\@tempdima<\@tempdimb%
			\@tempdima=\@tempdimb%
	\fi%
	\hb@xt@\@tempdima{\@cftbsnum #1\@cftasnum\hfil}\@cftasnumb%
}

% Page size
\geometry{
	a4paper, includefoot, hmargin = 2.6cm, top = 3cm, bottom = 2.5cm,
	headheight = 1.5cm, headsep = 0.5cm, footskip = 0.75cm
}

% Equation display
\setlength{\abovedisplayskip}{6bp plus 1.5bp minus 3.5bp}
\setlength{\abovedisplayshortskip}{3bp plus 0.75bp minus 1.75bp}
\setlength{\belowdisplayshortskip}{3bp plus 0.75bp minus 1.75bp}
\setlength{\belowdisplayskip}{6bp plus 1.5bp minus 3.5bp}

% ctex settings
\ctexset{
	section = {
		format = {\zihao {-3}\bfseries },
		beforeskip = {20bp plus 1ex minus 0.2ex},
		afterskip = {6bp plus 0.2ex}
	},
	subsection = {
		format = {\zihao {4}\bfseries },
		beforeskip = {12bp plus 1ex minus 0.2ex},
		afterskip = {6bp plus 0.2ex}
	},
	subsubsection = {
		format = {\bfseries },
		beforeskip = {12bp plus 1ex minus 0.2ex},
		afterskip = {6bp plus 0.2ex}
	}
}

% Headers and footers
\def\pkupaper@int@setcase#1{%
	\let\MakeUppercase\relax%
	\expandafter\let\csname MakeUppercase \endcsname\relax%
	#1%
}
\fancypagestyle{plain}{
	\fancyhf{}\renewcommand*{\headrulewidth}{0.75bp}
	\fancyfoot[C]{\zihao{5}\normalfont{\thepage}}
	\fancyhead[CE]{\zihao{5}\normalfont{\cuniversity{} \cthesisname}}
	\fancyhead[CO]{\zihao{5}\normalfont\pkupaper@int@setcase{\titlemark}}
}
\pagestyle{plain}
