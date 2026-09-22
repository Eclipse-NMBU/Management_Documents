\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{rapport}[2026/08/13 Eclipse NMBU report class]

\LoadClass[12pt,a4paper]{article}

\RequirePackage{iftex}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage[margin=2.5cm,headheight=50pt,headsep=15pt,footskip=30pt]{geometry}
\emergencystretch=2em

% ---------------------------------------------------------------------------
% Font: Genos. Loading an arbitrary .ttf requires XeLaTeX or LuaLaTeX
% (compile with xelatex/lualatex, not pdflatex); under pdfLaTeX we fall
% back to the default LaTeX font instead of erroring.
%
% Genos-VariableFont_wght.ttf is a variable-weight font, but this MiKTeX
% toolchain's XeTeX/LuaTeX does not honour OpenType Font Variation axes
% (RawFeature={+axis{wght=...}} etc. silently render at the font's default
% instance, "Thin", regardless of engine or renderer). To get real Regular/
% Bold/Italic/Bold-Italic weights we instead use static instances,
% pre-extracted once with fontTools:
%   python -m fontTools.varLib.instancer Genos-VariableFont_wght.ttf wght=400 -o Genos-Regular.ttf
%   python -m fontTools.varLib.instancer Genos-VariableFont_wght.ttf wght=700 -o Genos-Bold.ttf
%   python -m fontTools.varLib.instancer Genos-Italic-VariableFont_wght.ttf wght=400 -o Genos-Italic.ttf
%   python -m fontTools.varLib.instancer Genos-Italic-VariableFont_wght.ttf wght=700 -o Genos-BoldItalic.ttf
% ---------------------------------------------------------------------------
% Genos-*.ttf lives in Common/. \rap@fontpath is that folder, relative to
% the .tex file being compiled. Default assumes the .tex file lives two
% folders below Common/ (as in Common/Latex/Templates/). For a report
% elsewhere in the repo, predefine \rap@fontpath (with the '@' catcode
% made a letter) *before* \documentclass{rapport}, e.g. for a file three
% folders below the repo root in a different subtree:
%   \makeatletter
%   \def\rap@fontpath{../../../Common/}
%   \makeatother
%   \documentclass{../../../Common/Latex/Templates/rapport}
% This can't be a \newcommand set *after* \documentclass, because the
% font is loaded immediately below, not deferred to \begin{document}
% (deferring via \AtBeginDocument triggers a fontspec/vertical-mode bug).
\providecommand{\rap@fontpath}{../../}

\ifPDFTeX
  \RequirePackage[utf8]{inputenc}
  \RequirePackage[T1]{fontenc}
\else
  \RequirePackage{fontspec}
  \setmainfont{Genos}[
    Path = \rap@fontpath,
    Extension = .ttf,
    UprightFont = *-Regular,
    BoldFont = *-Bold,
    ItalicFont = *-Italic,
    BoldItalicFont = *-BoldItalic,
  ]
  \setsansfont{Genos}[
    Path = \rap@fontpath,
    Extension = .ttf,
    UprightFont = *-Regular,
    BoldFont = *-Bold,
    ItalicFont = *-Italic,
    BoldItalicFont = *-BoldItalic,
  ]
\fi

% ---------------------------------------------------------------------------
% Metadata commands — set these in your document before \begin{document}
%   \reporttitle{Structural Analysis Report}
%   \projectname{Fenrir}                 % used if \projectlogo is not set
%   \projectlogo{path/to/project-logo}   % optional, overrides \projectname
%   \orglogo{path/to/org-logo}           % optional, defaults to Eclipse logo
% ---------------------------------------------------------------------------
\makeatletter
\def\@reporttitle{}
\newcommand{\reporttitle}[1]{\def\@reporttitle{#1}}

\def\@projectname{}
\newcommand{\projectname}[1]{\def\@projectname{#1}}

\def\@projectlogo{}
\newcommand{\projectlogo}[1]{\def\@projectlogo{#1}}

% Default assumes the .tex file lives two folders below Common/ (as in
% Common/Latex/Templates/). Override with \orglogo{...} if your report
% lives elsewhere.
\def\@orglogo{../../Eclipse Images/EclipseFullText}
\newcommand{\orglogo}[1]{\def\@orglogo{#1}}
\makeatother

% ---------------------------------------------------------------------------
% Header / footer
% ---------------------------------------------------------------------------
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0.6pt}
\renewcommand{\footrulewidth}{0.6pt}

% Logos are set to the cap-height of the header title text (\large\bfseries),
% not a full 1em, since 1em includes ascender/descender space and looks
% oversized next to the text.
\makeatletter
\newlength{\rap@logoheight}
\settoheight{\rap@logoheight}{\large\bfseries X}

\fancyhead[L]{%
  \large\bfseries
  \ifx\@projectlogo\@empty
    \@projectname
  \else
    \raisebox{0pt}{\includegraphics[height=\rap@logoheight]{\@projectlogo}}
  \fi
}
\fancyhead[C]{\large\bfseries \@reporttitle}
\fancyhead[R]{\raisebox{0pt}{\includegraphics[height=\rap@logoheight]{\@orglogo}}}
\makeatother

\fancyfoot[C]{\thepage/\pageref{LastPage}}

% ---------------------------------------------------------------------------
% Front matter / main matter switch, for use after \makecoverpage and
% \tableofcontents: front matter (cover, TOC, abstract) is unnumbered or
% roman-numbered with no running header; \reportmainmatter starts the
% arabic-numbered body with the header/footer defined above.
% ---------------------------------------------------------------------------
\newcommand{\reportmainmatter}{%
  \newpage
  \pagenumbering{arabic}
  \pagestyle{fancy}
}

% ---------------------------------------------------------------------------
% \vsection / \vsubsection: like \section*/\subsection* (no auto-numbering,
% since headings already carry their own § numbering), but still add an
% entry to the table of contents.
% ---------------------------------------------------------------------------
\newcommand{\vsection}[1]{\section*{#1}\addcontentsline{toc}{section}{#1}}
\newcommand{\vsubsection}[1]{\subsection*{#1}\addcontentsline{toc}{subsection}{#1}}
