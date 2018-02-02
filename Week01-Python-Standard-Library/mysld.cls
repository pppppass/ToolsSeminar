%% myslide.cls
%
%% Copyright 2018 Yifei Wang
%

% Load class
\LoadClass[UTF8]{beamer}%

%Required Librar
\usepackage{tikz}

% Themes
\useoutertheme{infolines}
\useinnertheme{rectangles}

% Colors
\usecolortheme{dolphin}

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

%修改背景图片
%\setbeamertemplate{background}{
%  \begin{tikzpicture}[remember picture,overlay,shift=(current page.south west)]
%    \node[anchor=south west, inner sep=0pt, opacity=0.5] at (0.8\paperwidth, 4.5mm){
%     \includegraphics [width=0.2\paperwidth]{bg.jpg}};
%  \end{tikzpicture}
%}
