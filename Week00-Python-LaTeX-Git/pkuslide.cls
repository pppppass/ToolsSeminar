%% PKU-style slide class
%
%% pkuslide.cls
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
%   pkuslide.manifest.md
% and an introduction is included as well.
%
% This file cannot be typeset directly. When using this file
% by \documentclass{...}, it is recommended to typeset with LuaLaTeX.

% Identification
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pkuslide}[2017/12/15 PKU-style slide class]

% Declaration of options
\DeclareOption{english}{\def\pkuslide@english{\relax}}
\ProcessOptions\relax
\DeclareOption{nochinese}{\def\pkuslide@nochinese{\relax}}
\ProcessOptions\relax

\ifdefined\pkuslide@nochinese%
% Load class
\LoadClass[UTF8]{beamer}%
\else%
% Pass options
\ifdefined\pkuslide@english%
\PassOptionsToClass{scheme=plain}{ctexbeamer}%
\fi%
%
% Load class
\LoadClass[UTF8]{ctexbeamer}%
\fi

% Load packages
\RequirePackage[backend=biber, url=false, autolang=other]{biblatex}

% Themes
\useoutertheme{infolines}
\useinnertheme{rectangles}

% Colors
\definecolor{pkured}{HTML}{94070A}
\colorlet{pkuredgray}{pkured!75!red}
\colorlet{pkuredblack}{pkured!50!black}
\definecolor{nonpkublue}{HTML}{03356B}
\definecolor{nonpkugreen}{HTML}{025709}
%
\setbeamercolor{structure}{fg=pkured}
%
\setbeamercolor{normal text}{fg=black,bg=white}
\setbeamercolor{alerted text}{fg=nonpkugreen!67!yellow,bg=white}
\setbeamercolor{example text}{fg=nonpkublue,bg=white}
%
\setbeamercolor{palette primary}{fg=pkuredblack,bg=gray!20}
\setbeamercolor{palette secondary}{fg=pkuredblack,bg=pkuredgray!25}
\setbeamercolor{palette tertiary}{fg=gray!10,bg=pkured}
\setbeamercolor{palette quaternary}{fg=gray!10,bg=pkured!80!orange}
%
\setbeamercolor{titlelike}{parent=palette quaternary}
%
\setbeamercolor{frametitle}{fg=gray!10}
%
\setbeamercolor{block title}{fg=gray!10,bg=pkured}
\setbeamercolor{block title alerted}{use=alerted text,fg=gray!10,bg=nonpkugreen!75!bg}
\setbeamercolor{block title example}{use=example text,fg=gray!10,bg=nonpkublue!75!bg}
%
\setbeamercolor{block body}{parent=normal text,use=block title,bg=block title.bg!25!bg}
\setbeamercolor{block body alerted}{parent=normal text,use=block title alerted,bg=block title alerted.bg!25!bg}
\setbeamercolor{block body example}{parent=normal text,use=block title example,bg=block title example.bg!25!bg}
%
\setbeamercolor{sidebar}{bg=pkured!90}
%
\setbeamercolor{palette sidebar primary}{fg=gray!10}
\setbeamercolor{palette sidebar secondary}{fg=pkured!20}
\setbeamercolor{palette sidebar tertiary}{fg=pkured!20}
\setbeamercolor{palette sidebar quaternary}{fg=gray!10}
%
\setbeamercolor*{separation line}{}
\setbeamercolor*{fine separation line}{}

% Fonts
\usefonttheme{professionalfonts}

% Slide quotes
\newenvironment{quoteslide}
{%
\setbeamercolor{background canvas}{bg=}%
\setbeamertemplate{headline}{}%
\setbeamertemplate{footline}{%
\leavevmode\hbox{%
\begin{beamercolorbox}[wd=.666667\paperwidth, ht=2.25ex, dp=1ex]{}\end{beamercolorbox}%
\begin{beamercolorbox}[wd=.333333\paperwidth, ht=2.25ex, dp=1ex, right]{}\usebeamerfont{date in head/foot}\insertshortdate{}\hspace*{2em}\insertframenumber{} / \inserttotalframenumber\hspace*{2ex}\end{beamercolorbox}%
}%
\vskip0pt}%
}
{}
\newcommand\quotefootnote[1]%
{{%
\hspace{0pt}\par\vspace{\stretch{1}}\parbox{0.9\paperwidth}{#1}\vspace{0.75ex}%
\global\setcounter{framenumber}{\value{page}}
}}
