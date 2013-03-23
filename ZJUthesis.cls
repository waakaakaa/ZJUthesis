%%
%% �����㽭��ѧ˶ʿ��ʿ��ҵ����LaTeXģ��
%% ��ģ������88TeX���ṩ����ѧϵ��ҵ����ģ��2006��������
%% ����������2011��9-10�¼��޸ģ���ӭ����޸��������ӭ�ڴ˻����������޸ĳ���
%% ���䣺shuwei1204@163.com
%% 
%% �ṩ��ģ������л���
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
% �汾˵��
\ProvidesClass{ZJUthesis}[2011/10/01 v1.0 ZJUthesis document class]
% ����ctexbookģ�棬����ר������
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions
% 2009/09/13��v0.94��֮��汾�ṩ��hyperref��֧�֣�ֱ��д��ѡ���
\LoadClass[cs4size,a4paper,fancyhdr,hyperref]{ctexbook}[2009/09/13]
%% math packages ��ѧ��ʽ��������ѧϵ������֮
\RequirePackage{amsmath,amsthm,amsfonts,amssymb,bm}
%% graphicx packages��psgrag�����޸�epsͼ�е���Ϣ������dvipdfm������
\RequirePackage{graphicx}
% ��Ҫtimes������Ӣ�����忴��������windows��
\RequirePackage{times}
% ��Ҫarray������������ʦ��Ϣʱ��
\RequirePackage{array}
% ��Ҫtocloft��������Ŀ¼��ʾ��ʽʱʹ�ã�LaTeX2eĬ�ϵĸ�ʽ������ģ��Ҫ��
\RequirePackage[titles]{tocloft}
% tocloft����Ҫtocbibind������ϣ�ͬʱtocloft����Ҫtitles������������Ϊchapter title
\RequirePackage[chapter]{tocbibind}
% ��Ҫ�������ܣ�����������
\RequirePackage{makeidx}
% �ο����׸�ʽ������Ҫnatbib��
% sort&compress�������ڰ�����˳�����вο�����
% longnamesfirst�������ڴ���������˳�򣬽�first name��ǰ�棬�����������
% square���������ñ���÷���������
% super���������ñ��Ϊ�ϱ��ʽ
\RequirePackage[sort&compress,longnamesfirst,square,super]{natbib}
% ����ͼƬ������ͷ����ѡ����10pt���ֺ�ΪС�ֺţ��Ӵ����壬��������Ŀ���1���ַ�
\RequirePackage[margin=10pt,font={small,bf},labelsep=quad]{caption}
% �����ͱ�����Ҫ����չ��
\RequirePackage{booktabs-de}
% �������ʹ�õİ�
\RequirePackage{calc}
% �ϲ��������õ��İ�
\RequirePackage{multirow}
% PDF�ĵ������Ӽ���ǩ��ǣ�����ѡ������ο�hyperref˵���ĵ�
% hyperref��Ҫ2011���Ĳ���
\hypersetup{CJKbookmarks=true,%
       bookmarksnumbered,%
               linkcolor=blue,%
              plainpages=false,%
            pdfstartview=FitH,
               hidelinks
         }
% �ĵ���ʼ����Ĭ������
\AtBeginDocument{\makeatletter\input{ZJUthesis.cfg}\makeatother}
% ����ҳ��߱߾���1.5cm
\oddsidemargin -0.14 true cm
% ż��ҳ����߾��������˫��ģʽ�뵥��ģʽ�������
\if@twoside
  \evensidemargin -0.34 true cm
\else
  \evensidemargin -0.14 true cm
\fi
% ����ҳͷ�հ׳ߴ�
\topmargin -0.74 true cm
\headheight 0.8 true cm
\headsep 0.5 true cm
\topsep 0.7 true cm
\textheight 23.9 true cm
\textwidth 16.6 true cm
\footskip 0.9 true cm
\parskip 0.5ex plus 0.25ex minus 0.25ex
% cleardoublepage�������Ķ���
\def\cleardoublepage{%
  \clearpage
  \if@twoside
    \ifodd
      \c@page
    \else
      \thispagestyle{empty}%
      \hbox{}\newpage
      \if@twocolumn
        \hbox{}\newpage
      \fi
    \fi
  \fi}

% ����ط�����һҳ�и��������ռ��������
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}

\newcommand\ZJUspace{\protect\CTEX@spaceChar\protect\CTEX@spaceChar}
\def\reserved@a#1 #2 #3\@nil{%
  \def\ZJUfiledate{#1}%
  \def\ZJUfileversion{#2}%
  \def\ZJUfileinfo{#3}}%
\edef\reserved@b{\csname ver@ZJUthesis.cls\endcsname}
\expandafter\reserved@a\reserved@b\@nil\relax

% ������Nchapter�Ķ���
% �����mainmatter��Ӧ��tex�ĵ��еĶ���
\newcommand\Nchapter[1]{%
  \if@mainmatter%
    \@mainmatterfalse%
    \chapter{#1}%
    \@mainmattertrue%
  \else
    \chapter{#1}%
  \fi}

% �»��ߵ�һ������
\def\ZJU@underline[#1]#2{%
  \underline{\hbox to #1{\hfil#2\hfil}}}
\def\ZJUunderline{\@ifnextchar[\ZJU@underline\underline}
\newcommand\classification[1]{\def\ZJU@value@classification{#1}}
\newcommand\confidential[1]{\def\ZJU@value@confidential{#1}}
\newcommand\UDC[1]{\def\ZJU@value@UDC{#1}}
\newcommand\serialnumber[1]{\def\ZJU@value@serialnumber{#1}}
\newcommand\school[1]{\def\ZJU@value@school{#1}}
\newcommand\SecretLevel[1]{%
  \def\ZJU@value@SecretLevel{#1}
  \def\ZJU@value@IsSecret{1}}
\newcommand\PersonalID[1]{\def\ZJU@value@PersonalID{#1}}
\newcommand\degree[1]{\def\ZJU@value@degree{#1}}
\renewcommand\title[2][\ZJU@value@title]{%
  \def\ZJU@value@title{#2}
  \def\ZJU@value@titlemark{\MakeUppercase{#1}}}
\newcommand\titletl[1]{\def\ZJU@value@titletl{#1}}
\newcommand\Etitle[1]{\def\ZJU@value@Etitle{#1}}
\newcommand\Etitletl[1]{\def\ZJU@value@Etitletl{#1}}
\renewcommand\author[1]{\def\ZJU@value@author{#1}}
\newcommand\supervisor[1]{\def\ZJU@value@supervisor{#1}}
\newcommand\cpsupervisor[1]{\def\ZJU@value@cpsupervisor{#1}}
\newcommand\supervisorinstitute[1]{\def\ZJU@value@supervisorinstitute{#1}}
\newcommand\major[1]{\def\ZJU@value@major{#1}}
\newcommand\researchdm[1]{\def\ZJU@value@researchdm{#1}}
\newcommand\submitdate[1]{\def\ZJU@value@submitdate{#1}}
\newcommand\defenddate[1]{\def\ZJU@value@defenddate{#1}}
\newcommand\institute[1]{\def\ZJU@value@institute{#1}}
\newcommand\chairman[1]{\def\ZJU@value@chairman{#1}}
\newcommand\commissionerA[1]{\def\ZJU@value@commissionerA{#1}}
\newcommand\commissionerB[1]{\def\ZJU@value@commissionerB{#1}}
\newcommand\commissionerC[1]{\def\ZJU@value@commissionerC{#1}}
\newcommand\commissionerD[1]{\def\ZJU@value@commissionerD{#1}}
\newcommand\commissionerE[1]{\def\ZJU@value@commissionerE{#1}}
\newcommand\reviewersA[1]{\def\ZJU@value@reviewersA{#1}}
\newcommand\reviewersB[1]{\def\ZJU@value@reviewersB{#1}}
\newcommand\reviewersC[1]{\def\ZJU@value@reviewersC{#1}}
\newcommand\reviewersD[1]{\def\ZJU@value@reviewersD{#1}}
\newcommand\reviewersE[1]{\def\ZJU@value@reviewersE{#1}}
% �������������
\newcommand\makeCoverPage{%
  % ����ط�д���Ƿ����ϵķ������ѧ�ţ������ֺſ��Ը���
  \pagenumbering{alph}
  \cleardoublepage
  \thispagestyle{empty}
  {
    \songti\zihao{-4}
    \linespread{1.3}
    \begin{center}
      {\hspace{2em}
      \ZJU@label@classification~
      \ZJUunderline[90pt]{\ZJU@value@classification}
      \hfill
      \ZJU@label@serialnumber~
      \ZJUunderline[60pt]{\ZJU@value@serialnumber} \\
      \vspace{3pt}
      \ifx\ZJU@value@IsSecret\undefined
      \else
        \hspace{2em}
        \ZJU@label@SecretLevel~
        \ZJUunderline[90pt]{\ZJU@value@SecretLevel}
      \fi
      \hfill
      \ZJU@label@PersonalID~
      \ZJUunderline[60pt]{\ZJU@value@PersonalID}\\
      }
      % ����ߴ���Ը���
      \vspace{10mm}
      % �㽭��ѧ�ĸ���
      \ifpdf
        \includegraphics[width=60.3mm]{./CoverPagepic/ZJDX.pdf} \\
      \else
        \includegraphics[width=60.3mm]{./CoverPagepic/ZJDX.eps} \\
      \fi
      % ����ߴ���Ը���
      \vspace{4mm}
      %% \ZJU@value@school \\  \zihao{-1}
      % �����ʿѧλ������def�ļ������У���Ȼ��tex�ļ��л����Ը���
      \centerline{\songti \zihao{-1}{\ZJU@value@degree\ZJU@label@thesis} }
      % ����ߴ���Ը���
      \vspace{4mm}
      % ����ط��������ձ�
      \ifpdf
        \includegraphics[width=22.8mm]{./CoverPagepic/QSY.pdf}    \\
      \else
        \includegraphics[width=22.8mm]{./CoverPagepic/QSY.eps}    \\
      \fi
 
      \vspace{20mm}

      % ������Ŀ�������ݣ������޸�
      \begin{tabular}{rl}
        {\bfseries\fangsong\zihao{3}\ZJU@label@title:} 
        &
        \bfseries\fangsong\zihao{-2} \ZJUunderline[260pt]{\ZJU@value@title} \\[3mm]
        &
        % ����ط������ڶ��б�����жϣ��������һ��д���£��еڶ�������ʾ��������ʾ
        \ifx\ZJU@value@titletl\undefined
          \hfil
        \else
          {\bfseries\fangsong\zihao{-2}\ZJUunderline[260pt]{\ZJU@value@titletl}}
        \fi \\[4mm]
        {\bfseries\fangsong\zihao{3}\ZJU@label@Etitle:} 
        &
        {\bfseries\zihao{-2}\ZJUunderline[260pt]{\ZJU@value@Etitle}}\\[3mm]
        &
        %ͬ����Ӣ�ı���Ķ����жϣ����һ��д���£��еڶ�����ʾ��������ʾ�ڶ���
        \ifx\ZJU@value@Etitletl\undefined
          \hfil
        \else
          {\bfseries\zihao{-2}\ZJUunderline[260pt]{\ZJU@value@Etitletl}}
        \fi\\
      \end{tabular}
      % �����������޸�
      \vspace{15mm}  
      % �����������岻ͬ������������AB���򻯴��룬��������õ���array���
      \newcolumntype{A}{>{\songti}r<{}}
      \newcolumntype{B}{>{\fangsong}l<{}}
      \zihao{4}
      \begin{tabular}{A@{��}B}
        \ZJU@label@author & \ZJUunderline[200pt]{\ZJU@value@author} \\[3mm]
        \ZJU@label@supervisor & \ZJUunderline[200pt]{\ZJU@value@supervisor} \\[3mm]
        % �ж���û�к�����ʦ
        \ifx\ZJU@value@cpsupervisor\undefined
        \else
         \ZJU@label@cpsupervisor
        \fi
        &
        \ifx\ZJU@value@cpsupervisor\undefined
        \hfil\\[-7.7mm]
        \else
          \ZJUunderline[200pt]{\ZJU@value@cpsupervisor} \\[3mm]
        \fi
        \ZJU@label@major & \ZJUunderline[200pt]{\ZJU@value@major} \\[3mm]
        \ZJU@label@researchdm & \ZJUunderline[200pt]{\ZJU@value@researchdm} \\[3mm]
        \ZJU@label@institute & \ZJUunderline[200pt]{\ZJU@value@institute} \\
      \end{tabular}
    \end{center}
    % �����ʵ��Ŀհ�
    \vfill
    % ���һ�� �����ύ����
    \hfil{\bfseries\songti\zihao{-3}\hspace{4em}\ZJU@label@submitdate%
    \ZJUunderline[150pt]{\ZJU@value@submitdate}}\hfil
  }
}

%������������ҳ
\renewcommand\maketitle{%
  % �¿�һ��ҳ��
  \cleardoublepage
  % ��ҳüҳ��
  \thispagestyle{empty}
  {
    \linespread{1.3}
    \begin{center}

      % �Ȳ�������������Ŀ
      {\bfseries\fangsong\zihao{-2}\ZJUunderline[340pt]{\ZJU@value@title}\\
      \ifx\ZJU@value@titletl\undefined
        \hfil\\
      \else
        \ZJUunderline[300pt]{\ZJU@value@titletl}\\
      \fi}

      % ����һ�ξ���
      \vspace{15mm}

      % �������ձ�
      \ifpdf
        \includegraphics[width=22.8mm]{./CoverPagepic/QSY.pdf}    \\
      \else
        \includegraphics[width=22.8mm]{./CoverPagepic/QSY.eps}    \\
      \fi

      % ����հ�
      \vspace{12mm}
      {\bfseries\songti\zihao{3}��������ǩ����\ZJUunderline[120pt]{}\\

      \hfil\\
      ָ����ʦǩ����\ZJUunderline[120pt]{}\\}
 
      % ����հ�
      \vspace{15mm}
  
      % ��������Ϣ
      \newcolumntype{A}{>{\songti\zihao{4}}r}
      \newcolumntype{B}{>{\songti\zihao{4}}c}
      \begin{tabular}{A@{��}B}
        ����������1 & \ZJUunderline[260pt]{\ZJU@value@reviewersA}\\[2.2mm]
        ������2 & \ZJUunderline[260pt]{\ZJU@value@reviewersB}\\[2.2mm]
        ������3 & \ZJUunderline[260pt]{\ZJU@value@reviewersC}\\[2.2mm]
        ������4 & \ZJUunderline[260pt]{\ZJU@value@reviewersD}\\[2.2mm]
        ������5 & \ZJUunderline[260pt]{\ZJU@value@reviewersE}\\
      \end{tabular}
    
      % ��һ�οհ�
      \vspace{10mm}

      % ���ίԱ������
      \begin{tabular}{A@{��}B}
        ���ίԱ����ϯ & \ZJUunderline[260pt]{\ZJU@value@chairman}\\[2.2mm]
        ίԱ1 & \ZJUunderline[260pt]{\ZJU@value@commissionerA}\\[2.2mm]
        ίԱ2 & \ZJUunderline[260pt]{\ZJU@value@commissionerB}\\[2.2mm]
        ίԱ3 & \ZJUunderline[260pt]{\ZJU@value@commissionerC}\\[2.2mm]
        ίԱ4 & \ZJUunderline[260pt]{\ZJU@value@commissionerD}\\[2.2mm]
        ίԱ5 & \ZJUunderline[260pt]{\ZJU@value@commissionerE}\\
      \end{tabular}

    \end{center}
    % ��һ�οɱ�հ�
      \vfil
    % ���ʱ��
      {\songti\zihao{4}\hfill\ZJU@label@defenddate%
      \ZJUunderline[150pt]{\ZJU@value@defenddate}\hspace{3em}}
  }
}

% ����ط�������Ӣ�ı���ҳ
\newcommand\englishtitle[1]{\def\ZJU@value@englishtitle{#1}}
\newcommand\englishtitletl[1]{\def\ZJU@value@englishtitletl{#1}}
\newcommand\EreviewersA[1]{\def\ZJU@value@EreviewersA{#1}}
\newcommand\EreviewersB[1]{\def\ZJU@value@EreviewersB{#1}}
\newcommand\EreviewersC[1]{\def\ZJU@value@EreviewersC{#1}}
\newcommand\EreviewersD[1]{\def\ZJU@value@EreviewersD{#1}}
\newcommand\EreviewersE[1]{\def\ZJU@value@EreviewersE{#1}}
\newcommand\Echairman[1]{\def\ZJU@value@Echairman{#1}}
\newcommand\EcommissionerA[1]{\def\ZJU@value@EcommissionerA{#1}}
\newcommand\EcommissionerB[1]{\def\ZJU@value@EcommissionerB{#1}}
\newcommand\EcommissionerC[1]{\def\ZJU@value@EcommissionerC{#1}}
\newcommand\EcommissionerD[1]{\def\ZJU@value@EcommissionerD{#1}}
\newcommand\EcommissionerE[1]{\def\ZJU@value@EcommissionerE{#1}}

\newcommand\makeenglishtitle{%
% ע�����cleardoublepage���÷�
  \cleardoublepage
  \thispagestyle{empty}
  {
    \linespread{1.3} 
    \begin{center}
      % Ӣ��������Ŀ
      {\bf\zihao{-2}\ZJUunderline[340pt]{\ZJU@value@englishtitle}\\
      \vspace{1ex}
      % �ж�Ӣ�ı������޵ڶ���
      \ifx\ZJU@value@englishtitletl\undefined
        \hfil
      \else
        \ZJUunderline[300pt]{\ZJU@value@englishtitletl}
      \fi}

      % ����һ�οհ׾���
      \vspace{7mm}

      % ���У��
      \ifpdf
        \includegraphics[width=22.8mm]{./CoverPagepic/QSY.pdf}    \\
      \else
        \includegraphics[width=22.8mm]{./CoverPagepic/QSY.eps}    \\
      \fi

      % ����һ�οհ׾���
      \vspace{7mm}

      % ����Ӣ��ǩ��
      {\bf\zihao{3}\hspace{1.7em}Author's signature:\ZJUunderline[120pt]{}\\
      \hfil\\[2mm]
      % ��ʦӢ��ǩ��
      Supervisor's signature:\ZJUunderline[120pt]{}}\\
    \end{center}
  
    % ����һ�οհ�
    \vspace{7mm}

    \zihao{4}
    % �����������б���Ӣ�ģ�
    %\newcolumntype{A}{>{\zihao{4}}r}
    %\newcolumntype{B}{>{\zihao{4}}c}
    \begin{tabular}{rc}
      External Reviewers: & \ZJUunderline[260pt]{\ZJU@value@EreviewersA}\\[1.2mm]
      & \ZJUunderline[260pt]{\ZJU@value@EreviewersB}\\[1.2mm]
      & \ZJUunderline[260pt]{\ZJU@value@EreviewersC}\\[1.2mm]
      & \ZJUunderline[260pt]{\ZJU@value@EreviewersD}\\[1.2mm]
      & \ZJUunderline[260pt]{\ZJU@value@EreviewersE}\\
    \end{tabular}

    % ����һ�οհ�
    \vspace{6mm}

    % ���ίԱ��������Ӣ�ģ�
    ~\\[1.2mm]
    \hbox to 2.4em{}Examining Committee Chairperson:\\[1.2mm]
    \hbox to 11.4em{}\ZJUunderline[260pt]{\ZJU@value@Echairman}\\[1.2mm]
    \hbox to 2.4em{}Examining Committee Members:\\[1.2mm]
    \hbox to 11.4em{}\ZJUunderline[260pt]{\ZJU@value@EcommissionerA}\\[1.2mm]
    \hbox to 11.4em{}\ZJUunderline[260pt]{\ZJU@value@EcommissionerB}\\[1.2mm]
    \hbox to 11.4em{}\ZJUunderline[260pt]{\ZJU@value@EcommissionerC}\\[1.2mm]
    \hbox to 11.4em{}\ZJUunderline[260pt]{\ZJU@value@EcommissionerD}\\[1.2mm]
    \hbox to 11.4em{}\ZJUunderline[260pt]{\ZJU@value@EcommissionerE}\\

    % ��һ�οհ�
    \vfill
    % �������  
    {\hfill Date of oral defence:\ZJUunderline[150pt]{\ZJU@value@defenddate}\hspace{3em}}
  }
}

% �����������ȨЭ��ת��ҳ
\newcommand\makeOSandCPRTpage{%
  \cleardoublepage
  \thispagestyle{empty}
  % ͷ�ϼ��пհ�
  \vspace*{-2mm}

  {\songti
  \zihao{-4}

  \begin{center}
    {\noindent\songti\zihao{-2}�㽭��ѧ�о���ѧλ���Ķ���������}\\
  \end{center}

  % �޸�һ��Ĭ���о࣬���ڴ�ҳ��Χ����Ч
  {\setlength{\baselineskip}{1.3\baselineskip}
  �����������ʽ���ѧλ�����Ǳ����ڵ�ʦָ���½��е��о�������ȡ�õ��о��ɹ������������ر���Ա�ע����л�ĵط��⣬�����в������������Ѿ�������׫д�����о��ɹ���Ҳ������Ϊ���{\bfseries\kaishu\zihao{4}\underline{~�㽭��ѧ~}}����������������ѧλ��֤���ʹ�ù��Ĳ��ϡ�����һͬ������ͬ־�Ա��о��������κι��׾�����������������ȷ��˵������ʾл�⡣

  \vspace{11ex}

  {\songti\zihao{-4}ѧλ��������ǩ����\hspace{8em}
  ǩ�����ڣ�\hspace{3em}��\hspace{2em}��\hspace{2em}��} 

  \vspace{12ex}

  \begin{center}
    {\noindent\songti\zihao{-2}ѧλ���İ�Ȩʹ����Ȩ��}
  \end{center}

  ��ѧλ����������ȫ�˽�{\bfseries\kaishu\zihao{4}\underline{~�㽭��ѧ~}}��Ȩ������������йز��Ż�����ͽ������ĵĸ�ӡ���ʹ��̣��������ı����ĺͽ��ġ�������Ȩ �㽭��ѧ ���Խ�ѧλ���ĵ�ȫ���򲿷����ݱ����й����ݿ���м����ʹ��������Բ���Ӱӡ����ӡ��ɨ��ȸ����ֶα��桢���ѧλ���ġ�

  �����ܵ�ѧλ�����ڽ��ܺ����ñ���Ȩ�飩

  \vspace{2ex}

  ѧλ��������ǩ����\hspace{9em}��ʦǩ����

  \vspace{2ex}

  ǩ�����ڣ�\hspace{3em}��\hspace{2em}��\hspace{2em}��\hspace{3em}
  ǩ�����ڣ�\hspace{3em}��\hspace{2em}��\hspace{2em}��}
  }
}

\newcommand\ZJUfrontmatter{%
  \frontmatter
  % ��������ǰ�Ĳ���ҳ���ʽΪ��д��������
  \pagenumbering{Roman}
}

\newcommand\ZJUmainmatter{%
  \mainmatter
}

\newcommand\ZJUbackmatter{%
  \backmatter
}

% ��ҳüҳ�ĸ�ʽ����
% ÿһ��chapter��ʼ�ĵ�һҳ��ҳüҳ����ʽΪplain��ʽ
\fancypagestyle{plain}{%
  \fancyhf{}% �������ǰҳ���ҳüҳ�Ŷ��壬��fancyhdr���еĶ���
  \renewcommand{\headrulewidth}{0pt}%
  \renewcommand{\footrulewidth}{0pt}%
  \if@twoside
    \fancyfoot[RO]{\zihao{-5} ~\thepage~}
    \fancyfoot[LE]{\zihao{-5} ~\thepage~}
  \else
    \fancyfoot[C]{\zihao{-5} ~\thepage~}
  \fi
}

% L���� R���� O����ҳ Eż��ҳ
% һ��ҳ��ҳüҳ����ʽ
\pagestyle{fancy}
  \fancyhf{} %fancyhfʵ����fancyhead��fancyfoot�ĺ��壬���Ĳ�����H��Fָ��
  % �ֵ�˫���ж�ҳü������
  \if@twoside
    \fancyhead[CE]{\songti\zihao{-5}\ZJU@value@school\ZJU@value@degree\ZJU@label@thesis}
    \fancyhead[CO]{\songti\zihao{-5}\leftmark}
    \fancyfoot[RO]{\zihao{-5} ~\thepage~}
    \fancyfoot[LE]{\zihao{-5} ~\thepage~}
  \else
    \fancyhead[L]{\songti\zihao{-5}\ZJU@value@school\ZJU@value@degree\ZJU@label@thesis}
    \fancyhead[R]{\songti\zihao{-5}\leftmark}
    \fancyfoot[C]{\zihao{-5} ~\thepage~}
  \fi

% �����½ڱ����ʽ
\CTEXsetup[name={,}]{chapter}
\CTEXsetup[number={\arabic{chapter}}]{chapter}
\CTEXsetup[format={\noindent}]{chapter}
\CTEXsetup[nameformat={\bfseries\zihao{-3}}]{chapter}
\CTEXsetup[titleformat={\bfseries\fangsong\zihao{-3}}]{chapter}
\CTEXsetup[format={\noindent}]{section}
\CTEXsetup[nameformat={\bfseries\zihao{4}}]{section}
\CTEXsetup[titleformat={\bfseries\fangsong\zihao{4}}]{section}
\CTEXsetup[format={\noindent}]{subsection}
\CTEXsetup[nameformat={\zihao{-4}}]{subsection}
\CTEXsetup[titleformat={\fangsong\zihao{-4}}]{subsection}
\CTEXsetup[format={\noindent}]{subsubsection}
\CTEXsetup[nameformat={\zihao{-4}}]{subsubsection}
\CTEXsetup[titleformat={\fangsong\zihao{-4}}]{subsubsection}
% �˴��½ڱ���ǰ��հ׾��������Ĭ�����ã������޸���ο�ctex�ο��ĵ�ctex.pdf

% ���Ĳ������ֵ��о�����
\linespread{1.5}

% ȥ��Ŀ¼�еĿո��ַ�
\addtocontents{toc}{\let\string\CTEX@spaceChar\relax}

% �����
\newenvironment{corrigenda}
  {\Nchapter{\ZJU@label@corrigenda}}
  {}

% ��л
\renewenvironment{thanks}
  {\Nchapter{\ZJU@label@thanks}}
  {}

% ����
\newenvironment{preface}
  {\Nchapter{\ZJU@label@preface}}
  {}

% ժҪ
\newenvironment{abstract}
  {\Nchapter{\ZJU@label@abstract}}
  {}

%�ؼ���
\newcommand\keywords[1]{%
  \vspace{2ex}\noindent{\heiti \ZJU@label@keywords} #1}

%Ӣ��ժҪ
\newenvironment{englishabstract}
  {\Nchapter{\ZJU@label@englishabstract}}
  {}

%Ӣ�Ĺؼ���
\newcommand\englishkeywords[1]{%
  \vspace{2ex}\noindent{\bf \ZJU@label@englishkeywords} #1}

% ����Ŀ¼�������г�Ŀ�Σ�
\newcommand\ZJUcontents{%
  % �޸�Ŀ¼�ĸ�ʽ
  \renewcommand{\cftchapfont}{\fangsong\zihao{-4}}
  \renewcommand{\cftchapleader}{\cftdotfill{\cftdot}}
  \renewcommand{\cftchapdotsep}{\cftdotsep}
  \renewcommand{\cftchappagefont}{\rm\zihao{-4}}
  \renewcommand{\cftsecleader}{\cftdotfill{\cftdot}}
  \renewcommand{\cftsecdotsep}{\cftdotsep}
  \renewcommand{\cftsecfont}{\fangsong\zihao{-4}}
  \renewcommand{\cftsecdotsep}{\cftdotsep}
  \renewcommand{\cftsecpagefont}{\rm\zihao{-4}}
  \setlength{\cftbeforechapskip}{-2pt}
  \setlength{\cftbeforesecskip}{-2pt}
  \setlength{\cftsecindent}{0pt}
  \setcounter{tocdepth}{1}
  \addtocontents{toc}{\cftpagenumbersoff{chapter}}
  \tableofcontents
  \addtocontents{toc}{\cftpagenumberson{chapter}}
}

% ��ͼĿ¼
\newcommand\ZJUListofFigures{%
  \renewcommand{\cftfigfont}{\fangsong\zihao{-4}}
  \renewcommand{\cftfigleader}{\cftdotfill{\cftdot}}
  \renewcommand{\cftfigdotsep}{\cftdotsep}
  \renewcommand{\cftfigpagefont}{\rm\zihao{-4}}
  \setlength{\cftbeforefigskip}{-2pt}
  \listoffigures
}

% ����Ŀ¼
\newcommand\ZJUListofTables{%
  \renewcommand{\cfttabfont}{\fangsong\zihao{-4}}
  \renewcommand{\cfttableader}{\cftdotfill{\cftdot}}
  \renewcommand{\cfttabdotsep}{\cftdotsep}
  \renewcommand{\cfttabpagefont}{\rm\zihao{-4}}
  \setlength{\cftbeforetabskip}{-2pt}
  \listoftables
}

% ��д�������嵥�������
\newenvironment{ListofSymbol}
{\Nchapter{\ZJU@label@symbol}}
{}

% �ο����ײ���
\DeclareRobustCommand\citenum
   {\begingroup
     \NAT@swatrue\let\NAT@ctype\z@\NAT@parfalse\let\textsuperscript\relax
     \NAT@citexnum[][]}

\newcommand\ZJUthesisbib[1]{%
  \setcitestyle{numbers, round, comma, aysep={}, yysep={,}, notesep={,}}
  \setlength{\bibsep}{0.5ex}
  \setlength{\bibhang}{2em}
  \renewcommand{\bibfont}{\fangsong\zihao{5}}

  \bibliographystyle{ZJUthesis}
  \bibliography{#1}
}

\makeindex

% ����
\newcommand\ZJUindex{%
  \cleardoublepage
  % ������һ��������������ǩλ�ô���
  \phantomsection
  \printindex
}

% ���߼���
\newenvironment{resume}
  {\Nchapter{\ZJU@label@resume}}
  {}

% ��������Ŀ¼
\newenvironment{publications}
  {\Nchapter{\ZJU@label@publications}}
  {}



% 2006���ģ����δʹ�õ�������
\newenvironment{resumesection}[1]
  {{\noindent\normalfont\bfseries #1}
   \list{}{\labelwidth\z@
           \leftmargin 2\ccwd}
   \item\relax}
  {\endlist}
\newenvironment{resumelist}[1]
  {{\noindent\normalfont\bfseries #1}
   \list{}{\labelwidth\z@
           \leftmargin 4\ccwd
           \itemindent -2\ccwd
           \listparindent\itemindent}
   \item\relax}
  {\endlist}

% ������ʾ��4������ chapter section subsection subsubsection�����ʵ���С
\setcounter{secnumdepth}{4}
\newtheoremstyle{break}% name
  {}%      Space above, empty = `usual value'
  {}%      Space below
  {\itshape}% Body font
  {}%         Indent amount (empty = no indent, \parindent = para indent)
  {\bfseries}% Thm head font
  {.}%        Punctuation after thm head
  {\newline}% Space after thm head: \newline = linebreak
  {}%         Thm head spec
\endinput
%%
%% End of file `ZJUthesis.cls'.