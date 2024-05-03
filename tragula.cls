%%
%% This is file tragula.cls.  It is a slight modification of jss.cls
%% version 2.2, by Achim Zeileis.
%% File tragula.cls is maintained at https://github.com/RobinHankin/tragula.git
\def\fileversion{2.2}
\def\filename{tragula}
\def\filedate{2013/04/06}
%%
%% Package `tragula' to use with LaTeX2e for use in the  Tragula journal
%% License: GPL-2
%% Copyright: (C) Achim Zeileis and Robin Hankin
%% Please report errors to hankin.robin@gmail.com
%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tragula}[\filedate\space\fileversion\space tragula class by Achim Zeileis and modified by Robin Hankin]
%% options
\newif\if@article
\newif\if@codesnippet
\newif\if@bookreview
\newif\if@softwarereview
\newif\if@review
\newif\if@shortnames
\newif\if@nojss
\newif\if@notitle
\newif\if@noheadings
\newif\if@nofooter

\@articletrue
\@codesnippetfalse
\@bookreviewfalse
\@softwarereviewfalse
\@reviewfalse
\@shortnamesfalse
\@nojssfalse
\@notitlefalse
\@noheadingsfalse
\@nofooterfalse

\DeclareOption{article}{\@articletrue%
  \@codesnippetfalse \@bookreviewfalse \@softwarereviewfalse}
\DeclareOption{codesnippet}{\@articlefalse%
  \@codesnippettrue \@bookreviewfalse \@softwarereviewfalse}
\DeclareOption{bookreview}{\@articlefalse%
  \@codesnippetfalse \@bookreviewtrue \@softwarereviewfalse}
\DeclareOption{softwarereview}{\@articlefalse%
  \@codesnippetfalse \@bookreviewfalse \@softwarereviewtrue}
\DeclareOption{shortnames}{\@shortnamestrue}
\DeclareOption{nojss}{\@nojsstrue}
\DeclareOption{notitle}{\@notitletrue}
\DeclareOption{noheadings}{\@noheadingstrue}
\DeclareOption{nofooter}{\@nofootertrue}

\ProcessOptions
\LoadClass[11pt,a4paper,twoside]{article}
%% required packages
\RequirePackage{graphicx,color,ae,fancyvrb}
\RequirePackage[T1]{fontenc}
\RequirePackage{hyperref}
\IfFileExists{upquote.sty}{\RequirePackage{upquote}}{}
%% bibliography
\if@shortnames
  \usepackage[authoryear,round]{natbib}
\else
  \usepackage[authoryear,round,longnamesfirst]{natbib}
\fi
\bibpunct{(}{)}{;}{a}{}{,}
\bibliographystyle{tragula}
%% page layout
\topmargin 0pt
\textheight 46\baselineskip
\advance\textheight by \topskip
\oddsidemargin 0.1in
\evensidemargin 0.15in
\marginparwidth 1in
\oddsidemargin 0.125in
\evensidemargin 0.125in
\marginparwidth 0.75in
\textwidth 6.125in
%% paragraphs
\setlength{\parskip}{0.7ex plus0.1ex minus0.1ex}
\setlength{\parindent}{0em}
%% for all publications
\newcommand{\Address}[1]{\def\@Address{#1}}
\newcommand{\Plaintitle}[1]{\def\@Plaintitle{#1}}
\newcommand{\Shorttitle}[1]{\def\@Shorttitle{#1}}
\newcommand{\Plainauthor}[1]{\def\@Plainauthor{#1}}
\newcommand{\Volume}[1]{\def\@Volume{#1}}
\newcommand{\Year}[1]{\def\@Year{#1}}
\newcommand{\Month}[1]{\def\@Month{#1}}
\newcommand{\Issue}[1]{\def\@Issue{#1}}
\newcommand{\Submitdate}[1]{\def\@Submitdate{#1}}
\newcommand{\Repository}[1]{\def\@Repository{#1}}
%% for articles and code snippets
\newcommand{\Acceptdate}[1]{\def\@Acceptdate{#1}}
\newcommand{\Abstract}[1]{\def\@Abstract{#1}}
\newcommand{\Keywords}[1]{\def\@Keywords{#1}}
\newcommand{\Plainkeywords}[1]{\def\@Plainkeywords{#1}}
%% for book and software reviews
\newcommand{\Reviewer}[1]{\def\@Reviewer{#1}}
\newcommand{\Booktitle}[1]{\def\@Booktitle{#1}}
\newcommand{\Bookauthor}[1]{\def\@Bookauthor{#1}}
\newcommand{\Publisher}[1]{\def\@Publisher{#1}}
\newcommand{\Pubaddress}[1]{\def\@Pubaddress{#1}}
\newcommand{\Pubyear}[1]{\def\@Pubyear{#1}}
\newcommand{\ISBN}[1]{\def\@ISBN{#1}}
\newcommand{\Pages}[1]{\def\@Pages{#1}}
\newcommand{\Price}[1]{\def\@Price{#1}}
\newcommand{\Plainreviewer}[1]{\def\@Plainreviewer{#1}}
\newcommand{\Softwaretitle}[1]{\def\@Softwaretitle{#1}}
\newcommand{\URL}[1]{\def\@URL{#1}}
%% for internal use
\newcommand{\Seriesname}[1]{\def\@Seriesname{#1}}
\newcommand{\Hypersubject}[1]{\def\@Hypersubject{#1}}
\newcommand{\Hyperauthor}[1]{\def\@Hyperauthor{#1}}
\newcommand{\Footername}[1]{\def\@Footername{#1}}
\newcommand{\Firstdate}[1]{\def\@Firstdate{#1}}
\newcommand{\Seconddate}[1]{\def\@Seconddate{#1}}
\newcommand{\Reviewauthor}[1]{\def\@Reviewauthor{#1}}
%% defaults
\author{Firstname Lastname\\Affiliation}
\title{Title}
\Abstract{---!!!---an abstract is required---!!!---}
\Plainauthor{\@author}
\Volume{VV}
\Year{YYYY}
\Month{MMMMMM}
\Issue{II}
\Submitdate{yyyy-mm-dd}
\Acceptdate{yyyy-mm-dd}
\Repository{http://placeholder_repository.com}
\Address{
  Firstname Lastname\\
  Affiliation\\
  Address, Country\\
  E-mail: \email{name@address}\\
 
}

\Reviewer{Firstname Lastname\\Affiliation}
\Plainreviewer{Firstname Lastname}
\Booktitle{Book Title}
\Bookauthor{Book Author}
\Publisher{Publisher}
\Pubaddress{Publisher's Address}
\Pubyear{YYY}
\ISBN{x-xxxxx-xxx-x}
\Pages{xv + 123}
\Price{USD 69.95 (P)}
\URL{http://link/to/webpage/}
\if@article
  \Seriesname{Issue}
%%  \Hypersubject{Tragula     {Volume~\@Volume, \@Seriesname~\@Issue}}
  \Hypersubject{Tragula}
  \Plaintitle{\@title}
  \Shorttitle{\@title}
  \Plainkeywords{\@Keywords}
\fi

\if@codesnippet
  \Seriesname{Code Snippet}
  \Hypersubject{Tragula -- Code Snippets}
  \Plaintitle{\@title}
  \Shorttitle{\@title}
  \Plainkeywords{\@Keywords}
\fi

\if@bookreview
  \Seriesname{Book Review}
  \Hypersubject{Tragula -- Book Reviews}
  \Plaintitle{\@Booktitle}
  \Shorttitle{\@Booktitle}
  \Reviewauthor{\@Bookauthor\\
                \@Publisher, \@Pubaddress, \@Pubyear.\\
                ISBN~\@ISBN. \@Pages~pp. \@Price.\\
                \url{\@URL}}
  \Plainkeywords{}
  \@reviewtrue
\fi

\if@softwarereview
  \Seriesname{Software Review}
  \Hypersubject{Tragula -- Software Reviews}
  \Plaintitle{\@Softwaretitle}
  \Shorttitle{\@Softwaretitle}
  \Booktitle{\@Softwaretitle}
  \Reviewauthor{\@Publisher, \@Pubaddress. \@Price.\\
                \url{\@URL}}
  \Plainkeywords{}
  \@reviewtrue
\fi

\if@review
  \Hyperauthor{\@Plainreviewer}
  \Keywords{}
  \Footername{Reviewer}
  \Firstdate{\textit{Published:} \@Submitdate}
  \Seconddate{}
\else
  \Hyperauthor{\@Plainauthor}
  \Keywords{---!!!---at least one keyword is required---!!!---}
  \Footername{Affiliation}
  \Firstdate{\textit{Submitted:} \@Submitdate}
  \Seconddate{\textit{Accepted:} \@Acceptdate}
\fi
%% Sweave(-like)
\DefineVerbatimEnvironment{Sinput}{Verbatim}{fontshape=sl}
\DefineVerbatimEnvironment{Soutput}{Verbatim}{}
\DefineVerbatimEnvironment{Scode}{Verbatim}{fontshape=sl}
\newenvironment{Schunk}{}{}
\DefineVerbatimEnvironment{Code}{Verbatim}{}
\DefineVerbatimEnvironment{CodeInput}{Verbatim}{fontshape=sl}
\DefineVerbatimEnvironment{CodeOutput}{Verbatim}{}
\newenvironment{CodeChunk}{}{}
\setkeys{Gin}{width=0.8\textwidth}
%% footer
\newlength{\footerskip}
\setlength{\footerskip}{2.5\baselineskip plus 2ex minus 0.5ex}

\newcommand{\makefooter}{%
  \vspace{\footerskip}

  \if@nojss
    \begin{samepage}
    \textbf{\large \@Footername: \nopagebreak}\\[.3\baselineskip] \nopagebreak
    \@Address \nopagebreak
    \end{samepage}
  \else
    \begin{samepage}
    \textbf{\large \@Footername: \nopagebreak}\\[.3\baselineskip] \nopagebreak
    \@Address\\ \nopagebreak
    \vfill
    \hrule \nopagebreak
    \vspace{.1\baselineskip}
    \noindent
    \begin{minipage}{0.1\textwidth}
      \includegraphics[width=0.75\textwidth,keepaspectratio]{tragula_knot}% library(knotR); knotplot(ornamental20,gap=2)
\vfill      \end{minipage}%
    \begin{minipage}{0.5\textwidth}
    \url{https://tuwhera.aut.ac.nz}\\[.3\baselineskip] \nopagebreak
    Published by The University of Stirling\\
    {Volume~\@Volume, \@Seriesname~\@Issue, \@Year}
    %%    {\@Month{} \@Year}
    \vspace{.3\baselineskip}
    \end{minipage}%
    \begin{minipage}{0.4\textwidth}
    \hfill\url{http://aut.ac.nz/}\\[.3\baselineskip] \nopagebreak
    \hfill\@Firstdate\\ \nopagebreak
    \hfill\@Seconddate  \nopagebreak
    \vspace{.3\baselineskip}
    \end{minipage}%
%%    \hrule
    \end{samepage}
  \fi
}
\if@nofooter
  %% \AtEndDocument{\makefooter}
\else
  \AtEndDocument{\makefooter}
\fi
%% required packages
\RequirePackage{hyperref}
%% new \maketitle
\def\@myoddhead{
  %%  {\color{white} JSS}\\[-1.42cm]
  %%  \rule{10mm}{1mm}
  \vspace{-2em}
  \parbox[b][10mm]{\textwidth}{%{\color{mygray}\hrule height 1pt}
    {
      %%   {\fontfamily{pzc} \fontsize{28}{32} \selectfont Journal of Statistical Software}
      \includegraphics[height=6mm,keepaspectratio]{tragula_word}\\[-3mm]
      %% \hfill{Volume~\@Volume, \@Seriesname~\@Issue}, {\@Month{} \@Year}\\[-3mm]
      %% {\small\it \@Month{} \@Year, Volume~\@Volume, \@Seriesname~\@Issue.%
      %% \hfill \tt\href{http://tuwhera.aut.ac.nz/}{http://tuwhera.aut.ac.nz/}}
    }
    {\color{mygray}\hrule height 1pt}
{Volume~\@Volume, \@Seriesname~\@Issue}, {\@Year}
    \hfill\vphantom{$h^{h^{h^h}}$}
    \url{\@Repository}\\
  }
}
\if@review
  \renewcommand{\maketitle}{
  \if@nojss
    %% \@oddhead{\@myoddhead}\\[3\baselineskip]
  \else
    \@oddhead{\@myoddhead}\\[3\baselineskip]
  \fi
    {\large
    \noindent
    Reviewer: \@Reviewer
    \vspace{\baselineskip}
    \hrule
    \vspace{\baselineskip}
    \textbf{\@Booktitle}
    \begin{quotation} \noindent
    \@Reviewauthor
    \end{quotation}
    \vspace{0.7\baselineskip}
    \hrule
    \vspace{1.3\baselineskip}
    }

    \thispagestyle{empty}
    \if@nojss
      \markboth{\centerline{\@Shorttitle}}{\centerline{\@Hyperauthor}}
    \else
      \markboth{\centerline{\@Shorttitle}}{\centerline{\@Hypersubject}}
    \fi
    \pagestyle{myheadings}
  }
\else
  \def\maketitle{
  \if@nojss
    %% \@oddhead{\@myoddhead} \par
  \else
    \@oddhead{\@myoddhead} \par
  \fi
   \begingroup
     \def\thefootnote{\fnsymbol{footnote}}
     \def\@makefnmark{\hbox to 0pt{$^{\@thefnmark}$\hss}}
     \long\def\@makefntext##1{\parindent 1em\noindent
                              \hbox to1.8em{\hss $\m@th ^{\@thefnmark}$}##1}
     \@maketitle \@thanks
   \endgroup
   \setcounter{footnote}{0}

   \if@noheadings
    %% \markboth{\centerline{\@Shorttitle}}{\centerline{\@Hypersubject}}
    \else
     \thispagestyle{empty}
      \if@nojss
        \markboth{\centerline{\@Shorttitle}}{\centerline{\@Hyperauthor}}
      \else
        \markboth{\centerline{\@Shorttitle}}{\centerline{\@Hypersubject}}
      \fi
     \pagestyle{myheadings}
   \fi

   \let\maketitle\relax \let\@maketitle\relax
   \gdef\@thanks{}\gdef\@author{}\gdef\@title{}\let\thanks\relax
  }

  \def\@maketitle{\vbox{\hsize\textwidth \linewidth\hsize
  \if@nojss
    %% \vskip 1in
  \else
    \vskip 0.1in
  \fi
   {\centering
   {\LARGE\bf \@title\par}
   \vskip 0.2in plus 1fil minus 0.1in
   {
       \def\and{\unskip\enspace{\rm and}\enspace}%
       \def\And{\end{tabular}\hss \egroup \hskip 1in plus 2fil
          \hbox to 0pt\bgroup\hss \begin{tabular}[t]{c}\large\bf\rule{\z@}{24pt}\ignorespaces}%
       \def\AND{\end{tabular}\hss\egroup \hfil\hfil\egroup
          \vskip 0.1in plus 1fil minus 0.05in
          \hbox to \linewidth\bgroup\rule{\z@}{10pt} \hfil\hfil
          \hbox to 0pt\bgroup\hss \begin{tabular}[t]{c}\large\bf\rule{\z@}{24pt}\ignorespaces}
       \hbox to \linewidth\bgroup\rule{\z@}{10pt} \hfil\hfil
       \hbox to 0pt\bgroup\hss \begin{tabular}[t]{c}\large\bf\rule{\z@}{24pt}\@author
       \end{tabular}\hss\egroup
   \hfil\hfil\egroup}
   \vskip 0.3in minus 0.1in
   \hrule
   \begin{abstract}
   \@Abstract
   \end{abstract}}
   \textit{Keywords}:~\@Keywords.
   \vskip 0.1in minus 0.05in
   \hrule
   \vskip 0.2in minus 0.1in
  }}
\fi
%% sections, subsections, and subsubsections
\newlength{\preXLskip}
\newlength{\preLskip}
\newlength{\preMskip}
\newlength{\preSskip}
\newlength{\postMskip}
\newlength{\postSskip}
\setlength{\preXLskip}{1.8\baselineskip plus 0.5ex minus 0ex}
\setlength{\preLskip}{1.5\baselineskip plus 0.3ex minus 0ex}
\setlength{\preMskip}{1\baselineskip plus 0.2ex minus 0ex}
\setlength{\preSskip}{.8\baselineskip plus 0.2ex minus 0ex}
\setlength{\postMskip}{.5\baselineskip plus 0ex minus 0.1ex}
\setlength{\postSskip}{.3\baselineskip plus 0ex minus 0.1ex}

\newcommand{\jsssec}[2][default]{\vskip \preXLskip%
  \pdfbookmark[1]{#1}{Section.\thesection.#1}%
  \refstepcounter{section}%
  \centerline{\textbf{\Large \thesection. #2}} \nopagebreak
  \vskip \postMskip \nopagebreak}
\newcommand{\jsssecnn}[1]{\vskip \preXLskip%
  \centerline{\textbf{\Large #1}} \nopagebreak
  \vskip \postMskip \nopagebreak}

\newcommand{\jsssubsec}[2][default]{\vskip \preMskip%
  \pdfbookmark[2]{#1}{Subsection.\thesubsection.#1}%
  \refstepcounter{subsection}%
  \textbf{\large \thesubsection. #2} \nopagebreak
  \vskip \postSskip \nopagebreak}
\newcommand{\jsssubsecnn}[1]{\vskip \preMskip%
  \textbf{\large #1} \nopagebreak
  \vskip \postSskip \nopagebreak}

\newcommand{\jsssubsubsec}[2][default]{\vskip \preSskip%
  \pdfbookmark[3]{#1}{Subsubsection.\thesubsubsection.#1}%
  \refstepcounter{subsubsection}%
  {\large \textit{#2}} \nopagebreak
  \vskip \postSskip \nopagebreak}
\newcommand{\jsssubsubsecnn}[1]{\vskip \preSskip%
  {\textit{\large #1}} \nopagebreak
  \vskip \postSskip \nopagebreak}

\newcommand{\jsssimplesec}[2][default]{\vskip \preLskip%
%%  \pdfbookmark[1]{#1}{Section.\thesection.#1}%
  \refstepcounter{section}%
  \textbf{\large #1} \nopagebreak
  \vskip \postSskip \nopagebreak}
\newcommand{\jsssimplesecnn}[1]{\vskip \preLskip%
  \textbf{\large #1} \nopagebreak
  \vskip \postSskip \nopagebreak}

\if@review
  \renewcommand{\section}{\secdef \jsssimplesec \jsssimplesecnn}
  \renewcommand{\subsection}{\secdef \jsssimplesec \jsssimplesecnn}
  \renewcommand{\subsubsection}{\secdef \jsssimplesec \jsssimplesecnn}
\else
  \renewcommand{\section}{\secdef \jsssec \jsssecnn}
  \renewcommand{\subsection}{\secdef \jsssubsec \jsssubsecnn}
  \renewcommand{\subsubsection}{\secdef \jsssubsubsec \jsssubsubsecnn}
\fi
%% colors
\definecolor{Red}{rgb}{0.4,0.1,0.1}
\definecolor{Blue}{rgb}{0,0,0.5}
\definecolor{mygray}{gray}{0.6}

\if@review
  \hypersetup{%
    hyperindex = {true},
    colorlinks = {true},
    linktocpage = {true},
    plainpages = {false},
    linkcolor = {Blue},
    citecolor = {Blue},
    urlcolor = {Red},
    pdfstartview = {Fit},
    pdfpagemode = {None},
    pdfview = {XYZ null null null}
  }
\else
  \hypersetup{%
    hyperindex = {true},
    colorlinks = {true},
    linktocpage = {true},
    plainpages = {false},
    linkcolor = {Blue},
    citecolor = {Blue},
    urlcolor = {Red},
    pdfstartview = {Fit},
    pdfpagemode = {UseOutlines},
    pdfview = {XYZ null null null}
  }
\fi
\if@nojss
  \AtBeginDocument{
    \hypersetup{%
      pdfauthor = {\@Hyperauthor},
      pdftitle = {\@Plaintitle},
      pdfkeywords = {\@Plainkeywords}
    }
  }
\else
  \AtBeginDocument{
    \hypersetup{%
      pdfauthor = {\@Hyperauthor},
      pdftitle = {\@Plaintitle},
      pdfsubject = {\@Hypersubject},
      pdfkeywords = {\@Plainkeywords}
    }
  }
\fi
\if@notitle
  %% \AtBeginDocument{\maketitle}
\else
  \AtBeginDocument{\maketitle}
\fi
%% commands
\newcommand\code{\bgroup\@makeother\_\@makeother\~\@makeother\$\@codex}
\def\@codex#1{{\normalfont\ttfamily\hyphenchar\font=-1 #1}\egroup}
%%\let\code=\texttt
\let\proglang=\textsf
\newcommand{\pkg}[1]{{\fontseries{b}\selectfont #1}}
\newcommand{\email}[1]{\href{mailto:#1}{\normalfont\texttt{#1}}}
\ifx\csname urlstyle\endcsname\relax
  \newcommand\@doi[1]{doi:\discretionary{}{}{}#1}\else
  \newcommand\@doi{doi:\discretionary{}{}{}\begingroup
\urlstyle{tt}\Url}\fi
\newcommand{\doi}[1]{\href{http://dx.doi.org/#1}{\normalfont\texttt{\@doi{#1}}}}
\newcommand{\E}{\mathsf{E}}
\newcommand{\VAR}{\mathsf{VAR}}
\newcommand{\COV}{\mathsf{COV}}
\newcommand{\Prob}{\mathsf{P}}
\newcommand{\orcid}[1]{\href{#1}{\,\includegraphics[height=8pt,width=8pt]{ORCID_iD.pdf}}}
\endinput
%%
%% End of file `jss.cls'.
