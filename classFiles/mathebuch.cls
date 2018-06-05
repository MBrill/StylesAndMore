%% --------------------------------------------------------------------------------------------
%%    mathebuch.cls
%%    Ein Class-File für das Buch "Mathematik für Informatiker"
%%    Basis: hanserbuch.cls von Holzmann/Plate für "Linux--Server für Intranet und Internet
%%    Manfred Brill (C) 2001
%% --------------------------------------------------------------------------------------------
%% hanserbuch.cls -- Format-File fuer Hanser-Buecher
%% Last Change: 10. 02. 2001 (Euro-Symbol)
%%                            10.02.2001 bibgerm.sty hinzugefügt
%%              14. 03. 2001 mehrere Veränderungen nach Telefonat mit Verlag
%%              16. 03. 2001 fancyplain (companion, pp. 97 ff.)
%%              19. 03. 2001 theorem.sty eingeführt, dadurch Abstand vor und nach
%%                           theorem-Umgebungen, die auch steuerbar sind, vgl. companion,
%%                           Doppelpunkt nach Nummer damit auch erledigt.
%%              20. 03. 2001 rule-Box für Aufzählungen auf die Beispiel-Liste angepasst
%%                           durch eine neue Länge, angepasst an \Box
%%              20. 03. 2001 Amsmb.tex hier eingeführt und dann in buch.tex eingespart.
%%              21. 03. 2001 Kopfzeile für Stichwortverzeichnis auf normale Schrift
%%                           eingestellt.
%%              16. 04. 2001 Symbol für Arccus-Kotangens definiert.
%%              30. 04. 2001 Symbol \vtr für Vektoren im Text definiert, nullv für Nullvektor
%%              05. 05. 2001 Absolutbetrag jetzt richtig, Symbol für das Skalarprodukt \inner
%%              06. 05. 2001 Metriksymbol \dist, \hfill in Beweis-Ende wieder eingefügt
%%              13. 05. 2001 Abkürzungen für Spalten- und Zeilenvektoren im \R2, \R3
%%                           mit den Symbolen \vtrs, \vtrz, \vtrst, \vtrzt.
%%              14. 05. 2001 Rang-- und Defekt einer Matrix
%%              19. 05. 2001 amscd für kommutative Diagramme
%%              25. 05. 2001 \clearemptydoublepage wie in Companion, p. 93
%%              25. 05. 2001 \usepackage{supertabular} für das mehrseitige Symbolverzeichnis
%%              02. 06. 2001 Beweis fett und kursiv
%%              09. 06. 2001 Header für Kapitel mit Kapitelnummer.
%%              29. 06. 2001 beispiel und beispiele: Abstand nach Überschrift bei beispiel
%%                           Abstand nach beispiele wie in beispiel eingestellt.
%%              08. 07. 2001 Beweis auf einfach fett eingestellt.
%%              24. 07. 2001 Papier- und Texthöhe vertauscht? Auf jeden Fall wurde jetzt die
%%                           die textheight auf 18,6 cm eingestellt!
%%              24. 07. 2001 \raggedbottom, um Abstand zwischen Satzspiegel und Kopfzeile
%%                           festzuhalten
%%              24. 07. 2001 Abstände vor Beispiel, Beispiele und Beweis vergrössert, Abstand oberhalb
%%                           caption auf 2mm eingestellt.
%%              25. 07. 2001 Abstände vor Beispiel und Beispiele wieder zurückgesetzt!
%%              25. 07. 2001 textheight auf 18,7 cm
%%              25. 07. 2001 abovecaptionskip wieder auf 0.0
%%              25. 07. 2001 Abstand vor Beweis auf 1.0ex
%%              25. 07. 2001 \parsep kleiner in exList für die Beispiele
%%              25. 07. 2001 Eigene Listenumgebung item1 statt itemize, da sonst latex
%%                           nicht richtig auf \parsep0.0ex \itemsep0.0ex reagiert.
%%              25. 07. 2001 Abstand vor Beweis auf 0.0ex eingestellt.
%%              25. 07. 2001 Liste für Peano-Axiome überarbeitet, Einzug weg bei P5.
%%              26. 07. 2001 vspace in beispiel und beispielen nach sloppypar, bei Seitenumbruch
%%                           wird dann vspace ignoriert.
%%              11. 04. 2002 Umbenannt in mathebuch.cls, aus Kompatibilitätsgründen. hanserbuch.cls
%%                           wird weiterentwickelt; insbesonder wird das Paket mathpple eingefügt,
%%                           um zu Palatino passende Mathematik-Zeichensätze zu verwenden!
%% --------------------------------------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}\relax
\ProvidesClass{mathebuch}[2001/05/25 Mathbook Class for Hanser, (c) M. Brill]

%% Book laden und 10 Punkte setzen
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ExecuteOptions{a4paper,10pt,twoside,german}
\ProcessOptions
\LoadClass{book}

%% Ab hier Definitionen speziell fuer Hanser
\RequirePackage{german}
\RequirePackage[latin1]{inputenc}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{amscd}
\RequirePackage{epsfig}
\RequirePackage{theorem}
\RequirePackage{makeidx}
\RequirePackage{color}
\RequirePackage{fancyhdr}
\RequirePackage{caption}
\RequirePackage{epic}
\RequirePackage{eepic}
\RequirePackage{palatino}
\RequirePackage{eurosym}
\RequirePackage{bibgerm}

\usepackage{german}
\usepackage[latin1]{inputenc}
%% AMS benutzen
\usepackage{amsmath}
\usepackage{amsfonts}
% Eingefügt für blacksqare
\usepackage{amssymb}
\usepackage{amscd}
\usepackage{epsfig}
\usepackage{theorem}
\usepackage{makeidx}
\usepackage{color}
\usepackage{fancyhdr}
\usepackage{caption}
% Deutsche bibtex Formage
\usepackage{bibgerm}
% Euro-Symbol
\usepackage{eurosym}
% Hier hinzugefügt: multicol, sonst kommt auf meiner Installation Fehlermeldung
% im Index füur zweispaltigen Satz
% MB, 04.01.2001
\usepackage{multicol}
% Hinzugefügt: eepic für Mehr Freiheit in den Graphiken
% MB, 25.02. 2001
\usepackage{epic}
\usepackage{eepic}
%% Auf Schriftart Palatino umschalten
\usepackage{palatino}
%% Mehrseitige Tabelle mit supertabular
\usepackage{supertabular}

%% Seitenabmessungen
%% DIN-A4-Ausdruck
\setlength\paperwidth                 {297mm}
%\setlength\paperheight                {187mm}
% paper und textheight vertauscht im Original?
\setlength\paperheight                {198mm}
%% Vorgaben fuers Layout
% paper und textheight vertauscht im Original?
%\setlength\textheight                 {198mm}
\setlength\textheight                 {187mm}
\setlength\textwidth                  {126mm}

\setlength\marginparwidth             {32mm}
\setlength\marginparsep               {3mm}
\setlength\oddsidemargin              {4.6mm}
\setlength\evensidemargin             {4.6mm}
\setlength\topmargin                  {-11.9mm}

%%
%% added: kleinerer Abstand zwischen Gleitobjekten und Text
%% 16. 2. 2001 by mb
\setlength{\textfloatsep}{10pt plus 2pt minus 2pt}
\setlength{\intextsep}{10pt plus 2pt minus 2pt}

%% kein Einzug am Begin des Absatzes
\parskip 0pt
\parindent 0pt
%% Abstand vor \section groesser, auf Wunsch von Frau Weilhart
\renewcommand\section{\@startsection {section}{1}{0mm}%
                                   {2.5\baselineskip}%ursprünglich 3.0, jetzt 2.5
                                   {2.3ex plus.2ex}%
                                   {\normalfont\raggedright\Large\bfseries}}

\raggedbottom

%% Abstand vor und nach theorem-Umgebungen (Satz, Definition) neu setzen,
%%hier sehen wir die Originaldefinitionen aus theorem.sty
%%\setlength\theorempreskipamount{12pt plus 5pt minus 3pt}
%%\setlength\theorempostskipamount{8pt plus 3pt minus 1.5pt}
\setlength\theorempreskipamount{8pt plus 3pt minus 1.5pt}
\setlength\theorempostskipamount{5pt plus 1pt minus 1pt}
%% Inhalt von theorems.tex
\newtheorem{satz}{Satz}[chapter]
\newtheorem{definition}{Definition}[chapter]
%%
%% Environments und Listen
%%
% Listen-Umgebung für Beispiele
\newenvironment{exList}%
{\begin{list}%
{\hfill $\Box$}%
{\parsep0.0ex \itemsep2pt plus1pt minus1pt \leftmargini1.5em \labelsep0.5em%
\setlength\labelwidth{\leftmargini}\addtolength\labelwidth{-\labelsep}}}%
{\end{list}}
%
%% kleines Kaestchen als erstes Aufzaehlungszeichen
%% Für Beispiele wurde die \Box aus amslatex als Aufzählungszeichen ausgewählt,
%% deshalb wird die rule-Box für die normalen Aufzählungen in der Größe verändert.
\newlength{\Blen}
% Auf Box-Länge setzen
\settoheight{\Blen}{$\Box$}
% rule damit setzen
%\renewcommand{\labelitemi}{\textcolor[gray]{0.5}{\rule{\Blen}{\Blen}}}

% Listen-Umgebung für aufzählungen
\newenvironment{item1}%
{\begin{list}%
{\hfill \textcolor[gray]{0.5}{\rule{0.8\Blen}{0.8\Blen}}}%
{\parsep0.0ex \itemsep2pt plus1pt minus1pt \leftmargini1.5em \labelsep0.5em%
\setlength\labelwidth{\leftmargini}\addtolength\labelwidth{-\labelsep}}}%
{\end{list}}
%
\newcounter{peano}
\newenvironment{peano}%
{\begin{list}{P\arabic{peano}:}{\usecounter{peano} \labelwidth3ex%
\labelsep1ex \setlength{\leftmargin}{4ex} \itemsep0ex plus0.2ex }}%
{\end{list}}
%
%
% Halb-Fett Font, wird nicht benutzt!
%\DeclareFixedFont{\ProofFont}{\encodingdefault}{\familydefault}{sb}{\shapedefault}{10pt}

\newenvironment{beispiel}%
{\vspace{0.5ex}\begin{sloppypar}\noindent \nopagebreak \emph{Beispiel:\nopagebreak}\\[0.5ex]}%
{\end{sloppypar}\vspace{0.5ex}}
%
\newenvironment{beispiele}% mehrere Beispiele,
% lokal durchnumeriert
{\vspace{0.5ex}\begin{sloppypar}\noindent  \nopagebreak \emph{Beispiele:\nopagebreak}%
\begin{exList}}%
{\end{exList}\end{sloppypar}\vspace{0.5ex}}
%
\newenvironment{beweis}%
{\begin{sloppypar}\noindent  \nopagebreak {\textbf{Beweis:}\nopagebreak}\\[0.0em]}%
{\hfill$\blacksquare$\end{sloppypar}\vspace{2.0ex}}
% Beweis, der mit einer Formel endet, muss selbst \blacksquare setzen
\newenvironment{mbeweis}%
{\begin{sloppypar}\noindent  \nopagebreak {\textbf{Beweis:}\nopagebreak}\\[0.0em]}%
{\end{sloppypar}\vspace{2.0ex}}
%
% Neue Kommandos mit \newcommand
%
% Aufgaben am Ende jedes Kapitels, auch im Inhaltsverzeichnis
\newcommand{\aufgaben}{ \section{Aufgaben}}
% Leere gerade Seite vor Kapitelanfang, wie in Companion, p. 93
\newcommand{\clearemptydoublepage}{\newpage{\pagestyle{empty}\cleardoublepage}}
% TOC-ähnliche Datei für eine Liste der Verfahren, vgl. companion pp. 37 ff.
% Suffix: .alg
% Zur Zeit nicht benutzt!
\newcommand{\listofalgorithms}{\@starttoc{alg}}
\newcommand{\algcaption}[1]{\addcontentsline{alg}{verfahren}{#1}}
\newcommand{\l@verfahren}[2]{\par\noindent#1 {\itshape #2}}
%%
%% Mathematiksymbole und Umgebungen mit AMS-LaTeX
%%
%
%% Zahlenmengen (AMS-FONTS)
\DeclareMathSymbol{\C}{\mathalpha}{AMSb}{"43}
\DeclareMathSymbol{\Q}{\mathalpha}{AMSb}{"51}
\DeclareMathSymbol{\R}{\mathalpha}{AMSb}{"52}
\newcommand{\N}{\ensuremath\mathbb{N}}
\newcommand{\Z}{\ensuremath\mathbb{Z}}
\newcommand{\Potenz}{\ensuremath\mathbb{P}}
%% Funktionen und Norm, Absolutbetrag nach AMS, logarithmus dualis
% Absolutbetrag, arccot (ist in latex nicht drin!!
% Vektoren als fettgedruckte Kleinbuchstaben
% und auch noch das Skalarprodukt
% Absolutbetrag
\newcommand{\abs}[1]{\ensuremath\lvert#1\rvert}
% Norm
\newcommand{\norm}[1]{\ensuremath \lVert#1 \rVert}
% Rang einer Matrix
\newcommand{\rang}{\ensuremath \operatorname{Rang}}
% Defekt einer Matrix
\newcommand{\defekt}{\ensuremath \operatorname{Def}}
% Skalarprodukt mit spitzen Klammern
\newcommand{\inner}[2]{\ensuremath \left< #1, #2 \right>}
% Metrik
\newcommand{\dist}[2]{\ensuremath d\left(#1, #2\right)}
% ggT statt gcd in amstex
%\newcommand{\ggT}{\operatorname{ggT}}
\DeclareMathOperator{\ggT}{ggT}
% kgV
\DeclareMathOperator{\kgV}{kgV}
% Sheffer-Strich mit Abstand, | ist Begrenzungssymbol in latex
\newcommand{\sheffer}{\ensuremath\:|\:}
% Logarithmus zur Basis 2
\newcommand{\ld}{\ensuremath \operatorname{ld}}
% Arcus-Kotangens
\newcommand{\arccot}{\ensuremath \operatorname{arccot}}
% Abkürzung für f: M --> N
\newcommand{\arrow}[3]{\ensuremath #1:\: #2 \rightarrow #3}
% Kleinbuchstaben (fett) für Vektoren im Text
\newcommand{\vtr}[1]{\ensuremath \mathbf{#1}}
% Abkürzung für Spaltenvektoren im R^2
\newcommand{\vtrs}[2]{\ensuremath \begin{pmatrix} #1 \\ #2 \end{pmatrix}}
% Abkürzung für Spaltenvektoren im R^3
\newcommand{\vtrst}[3]{\ensuremath \begin{pmatrix} #1 \\ #2 \\ #3\end{pmatrix}}
% Abkürzung für Spaltenvektoren im R^2, geschrieben als transponierte Zeilenvektoren
\newcommand{\vtrz}[2]{\ensuremath \left( #1, #2 \right)^T}
% Abkürzung für Zeilenvektoren im R^3, geschrieben als transponierte Zeilenvektoren
\newcommand{\vtrzt}[3]{\ensuremath \left(#1, #2, #3 \right)^T}
% Abkürzung für den Nullvektor
\newcommand{\nullv}{\ensuremath \mathbf{0}}

%% neue Definition fuer Listenumgebungen bis
%% zur 6. Ordnung
%% linken Einzug definieren
\setlength\leftmargini                 {1.5em}
\setlength\leftmarginii                {1.75em}
\setlength\leftmarginiii               {1.5em}
\setlength\leftmarginiv                {1.25em}
\setlength\leftmarginv                 {1em}
\setlength\leftmarginvi                {1em}
%% Aufzaehlungspunkte werden nicht eingerueckt
\setlength\labelsep                    {0.5em}
\setlength\labelwidth                  {\leftmargini}
\addtolength\labelwidth                {-\labelsep}
\setlength\topsep                      {0.0ex}
\setlength\itemsep                     {2pt plus1pt minus1pt}
\setlength\parsep                      {1pt plus1pt}
\def\@mklab#1{#1\hfil}
%% kleines Kaestchen als erstes Aufzaehlungszeichen
%% Für Beispiele wurde die \Box aus amslatex als Aufzählungszeichen ausgewählt,
%% deshalb wird die rule-Box für die normalen Aufzählungen in der Größe verändert.
%\newlength{\Blen}
% Auf Box-Länge setzen
%\settoheight{\Blen}{$\Box$}
% rule damit setzen
\renewcommand{\labelitemi}{\textcolor[gray]{0.5}{\rule{\Blen}{\Blen}}}
%\renewcommand\labelitemi                {\textcolor[gray]{0.5}{\rule{1.0ex}{1.0ex}}}
%% Abstand der einzelnen Listenelemente
%% Geändert nach Gespräch mit Frau Weilhart auf 0.0, vorher 1.5 em
%\topsep{0.0em}
%\itemsep{0.0em}
%\parsep{0.0em}

%% Eigene Definitionen fuer Kopf- und Fusszeilen
%% Am 16. 3. 2001 auf fancyplain umgestellt (mb)
%% vgl. latex companion, pp. 96
\pagestyle{fancy}
% Testhalber Kapitelangaben in der Kopfzeile ohne Numerierung, wie im Companion
%\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
% Ganz am Ende doch wieder umgestellt, in Anlehnung an andere Bücher!
\renewcommand{\chaptermark}[1]{\markboth{\thechapter\ #1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection\ #1}}
%% Die folgenden Angaben kommentieren hat dazu geführt, dass die Fonts
%% automatisch kleiner waren ???!
% clear
\fancyhf{}
% Redefine
\fancyhead[LE,RO]{\small \thepage}
% Frau Weingart: Kopfzeile -1pt zu Textfont, \small ist sehr wenig unterschied
% vielleicht auch auf scriptsize?
\fancyhead[LO]{\small \nouppercase  \rightmark}
\fancyhead[RE]{\small \nouppercase  \leftmark}
\fancyfoot{\scriptsize}

\fancypagestyle{plain}{%
   \fancyhead{} % get rid of headers
   \renewcommand{\headrulewidth}{0pt} % get rid of the line
}

%% Fussnoten nicht numerieren
\renewcommand{\thefootnote}{\fnsymbol{footnote}}
\@addtoreset{footnote}{section}

\renewcommand\@makefntext[1]{%
    \noindent
    \makebox[0.6em][l]{\@makefnmark}#1
}
%% Fußnotenlinie kürzer, latex-default bei book ist 0.4 \columnwidth
\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule\@width.2\columnwidth
  \kern2.6\p@}

%% Erste Seite eines Kapitels (keine Seitenzahl)
%% War so im Original von Hanser
%% Ersetzt durch \clearemptydoublepage wie im Companion, p. 93
%\renewcommand\chapter{\if@openright
%                          \cleardoublepage
%                      \else
%                         \clearpage\fi
%                      \thispagestyle{plain}
%                      \global\@topnum\z@
%                      \@afterindentfalse
%                      \secdef\@chapter\@schapter}
%% Bildunterschriften einen Punkt kleiner setzen, (mb) Abstände geringer (mb)
\renewcommand{\captionfont}{\small}
\renewcommand{\captionlabelfont}{\small \bf}
\setlength\abovecaptionskip               {0.0mm} % Vorheriger Wert war 0em
\setlength\belowcaptionskip               {0.2em}

%% Plazierung der Bilder guenstiger

%% Textanteil jeder Seite mindestens \textfraction
\renewcommand{\textfraction}{.001} % Standard 0.20

%% Abbildung muss mindesten \floatpagefraction von der Seite
%% gross sein um eine eigene leere Seite zu bekommen
\renewcommand{\floatpagefraction}{.99} % Standard 0.50

%%Stichwortverzeichnis
%% Changed: thispagestyle auf von plain auf empty, 16. 2. 2001, mb
\makeatletter
\renewenvironment{theindex}%
    {\newpage\parskip 0pt\columnseprule 0pt
     \chapter*{Stichwortverzeichnis}
     %% geändert, sonst wird die Kopfzeile grösser als im restlichen Text
     %%\markboth{\large Stichwortverzeichnis}{\large Stichwortverzeichnis}
     \markboth{\small Stichwortverzeichnis}{\small Stichwortverzeichnis}
     \addcontentsline{toc}{chapter}{Stichwortverzeichnis}%
     \thispagestyle{plain}%
     \let\item\@idxitem
     \begin{multicols}{2}}
    {\end{multicols}}
\renewcommand{\@idxitem}{\par\hangindent 20\p@}
\renewcommand{\subitem}{\par\hangindent 20\p@ \hspace*{10\p@}}
\renewcommand{\subsubitem}{\par\hangindent 20\p@ \hspace*{20\p@}}
\makeatother

%% nicht so pingelig
\sloppy


%% Ende
\endinput
%% End of ``hanserbuch.cls''