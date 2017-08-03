\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_cv}[2016/10/17 My custom CV class]

\LoadClass{article}

\RequirePackage{titlesec}
\RequirePackage{graphicX}
\RequirePackage{wrapfig}
%\RequirePackage{tikz}


\titleformat{\section}
  {\huge\scshape\raggedright\bfseries}
  {}{0em}
  {}
  [\titlerule]

\titleformat{\subsection}
  {\scshape\raggedright}
  {}{0em}
  {}

\newcommand{\datedsection}[2]{%
  \section[#1]{{{\texit{#1}}} \flushright #2}%
}

\newcommand{\salk}[2]{

  \includegraphics[width=6cm, height=8cm, keepaspectratio]{#1.png}
  %\end{tikzpicture}
  \hfill #2
}


\newcommand{\mtibio}[2]{

  \includegraphics[width=3cm, height=2cm, keepaspectratio]{#1.png}
  %\end{tikzpicture}
  \hfill #2
}



\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{\textbf{#1} \hfill #2}%
}


\newcommand{\name}[1]{
  %\leftline{\textbf{\fontsize{50}{60}\selectfont #1}}
  \leftline{\textbf{\Huge #1}}
  \vspace{5mm}
}

%\newcommand{\contact}[6]{
%  \noindent
%  \Large #1 {\large} \\ %street address
%  \vspace{1mm}
%  #2{\large\textperiodcentered} #3{\large\textperiodcentered} #4{\Large}\\  %% City, STATE
%  #5{\Large}  \\   %email
%  #6{\Large}    %phone number
%}
\newcommand{\contact}[6]{
  \noindent
  \Large #1\\
  \vspace{1mm}
  \Large #2 \textperiodcentered{} \Large #3 \textperiodcentered{} #4\\
  \vspace{1mm}
  \Large #5 \\
  \vspace{1mm}
  \textbf{ \textit{ #6 }}



  }

\newcommand{\workitems}[1]{
  \begin{itemize}
  \item #1
  \end{itemize}
}

%greates the header given name, image, street, city, zip, email, phonenumber
\newcommand{\head}[7]{
  \begin{wrapfigure}{r}{.3\textwidth}
  \centering
  %\begin{tikzpicture}[remember picture, overlay]
  %  \node[anchor=north east, inner sep=5pt]{};
  \vspace{-3cm}\includegraphics[width=6cm, height=8cm, keepaspectratio]{images/resumepic.jpg}
  %\end{tikzpicture}
  \end{wrapfigure}

  \name{#1}
  \contact{#2}{#3}{#4}{#5}{#6}{#7}
}


%elements to make a coverletter
\newcommand{\clhead}[7]{
  \name{#1}
  \noindent \large #2 \textperiodcentered  #3 \textperiodcentered #4 \textperiodcentered #5 \textperiodcentered\\
  \noindent \large #6\\
  \noindent \large \textbf{#7}\\
  \noindent\makebox[\linewidth]{\rule{\textwidth}{0.4pt}}

  \vspace{.5in}
}
