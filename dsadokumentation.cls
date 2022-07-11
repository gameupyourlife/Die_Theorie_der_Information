% DO NOT CHANGE THIS FILE

\def\dsafileversion{1.4}
\def\dsafiledate{2022/07/11}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dsadokumentation}[\dsafiledate\space Version \dsafileversion\space by Philipp Arras]

\AtEndDocument{\newpage Diese Datei wurde mit DSA-Dokumentations-Vorlage Version \dsafileversion{} vom \dsafiledate{} erstellt.}

% Layout and fonts
\LoadClass[a4paper, twoside]{scrreprt}
\RequirePackage{scrlayer-scrpage}
\clearpairofpagestyles{}
\RequirePackage{times}
\KOMAoption{chapterprefix}{true}
\renewcommand*\raggedchapter{\centering}
\RedeclareSectionCommand[beforeskip=0pt,afterskip=0.5\baselineskip]{chapter}
\setkomafont{chapterprefix}{\normalsize\mdseries}
\renewcommand{\chapapp}{Kurs}
\renewcommand*{\chapterformat}{%
  Akademie \myacademy{} --- \chapappifchapterprefix{\nobreakspace}\thechapter\autodot%
  \IfUsePrefixLine{%
    \par\nobreak\vspace{-\parskip}\vspace{-.6\baselineskip}%
    \rule{0.9\textwidth}{.5pt}%
  }{\enskip}%
}
\renewcommand\chapterlineswithprefixformat[3]{%
  \MakeUppercase{#2#3}
}
% /Layout and fonts

\RequirePackage[pdftex]{hyperref}

% Bibliography
\usepackage[style=authoryear,citestyle=authoryear-comp,
giveninits=true,
sorting=nyvt,
alldates=year,
uniquename=false,
doi=false,
eprint=false,isbn=false,url=false,dashed=False]{biblatex}
\DeclarePrintbibliographyDefaults{heading=subbibliography}
\DeclareNameAlias{sortname}{last-first}
\renewbibmacro{in:}{}
% /Bibliography

% Better hyphenation
\RequirePackage[ngerman=ngerman-x-latest]{hyphsubst}

% Math packages
\RequirePackage{amsmath}

% German references
\RequirePackage[ngerman]{babel}
\RequirePackage[ngerman]{cleveref}

% Nice tables
\RequirePackage{booktabs}

% Nice quotation marks
\RequirePackage{csquotes}

% Include external graphics
\RequirePackage{graphicx}

% Custom commands
\newcommand\kurs[3]{\chapter{#1} \begin{center}\Large\MakeUppercase{#2}\normalsize

    \vspace{1.5em}
    \includegraphics[height=7cm]{#3} \end{center}}

\newcommand{\sectionauthor}[1]{%
  {\parindent0pt\vspace*{-1em}%
  \linespread{1.1}\large\itshape#1%
  \par\nobreak\vspace*{0.6em}}
  \@afterheading%
}


% Draft mode
\RequirePackage{datetime}
\RequirePackage{setspace}
\RequirePackage{lineno}
\RequirePackage{lastpage}

\KOMAoption{draft}{false}
\makeatletter
\@ifclasswith{dsadokumentation}{draft}{
  \setkeys{Gin}{draft=false}
  \linenumbers
  \setstretch{2}
  \chead{\textit{Draft version \today \ \currenttime.}}
  \cfoot*{\thepage{}/\pageref{LastPage}}
}{}
\makeatother
% \Draft mode
