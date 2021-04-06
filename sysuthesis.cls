%%
%% This is file `sysuthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% sysuthesis.dtx  (with options: `cls')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2005-2021 by Ruini Xue <xueruini@gmail.com>
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 
%% To produce the documentation run the original source files ending with `.dtx'
%% through LaTeX.
%% 
\NeedsTeXFormat{LaTeX2e}[2017/04/15]
\ProvidesClass{sysuthesis}
[2020/10/14 7.1.0 Sun Yat-sen University Thesis Template]
\newcommand\sysu@error[1]{%
  \ClassError{sysuthesis}{#1}{}%
}
\newcommand\sysu@warning[1]{%
  \ClassWarning{sysuthesis}{#1}%
}
\newcommand\sysu@patch@error[1]{%
  \sysu@error{Failed to patch command \protect#1}%
}
\newcommand\sysu@deprecate[2]{%
  \def\sysu@@tmp{#2}%
  \sysu@warning{%
    The #1 is deprecated%
    \ifx\sysu@@tmp\@empty\else
      . Use #2 instead%
    \fi
  }%
}
\@ifl@t@r\fmtversion{2017/04/15}{}{
  \sysu@error{%
    TeX Live 2017 or later version is required to compile this document%
  }
}
\RequirePackage{iftex}
\ifXeTeX\else
  \sysu@error{XeLaTeX is required to compile this document}
\fi
\InputIfFileExists{sysuthesis-pdf-test-config.tex}{}{
  \InputIfFileExists{sysuthesis-log-test-config.tex}{}{}
}
\hyphenation{Thu-Thesis}
\def\sysuthesis{ThuThesis}
\def\version{7.1.0}
\RequirePackage{kvdefinekeys}
\RequirePackage{kvsetkeys}
\RequirePackage{kvoptions}
\SetupKeyvalOptions{
  family=sysu,
  prefix=sysu@,
  setkeys=\kvsetkeys}
\newcommand\sysusetup[1]{%
  \kvsetkeys{sysu}{#1}%
}
\newcommand\sysu@define@key[1]{%
  \kvsetkeys{sysu@key}{#1}%
}
\kv@set@family@handler{sysu@key}{%
  \@namedef{sysu@#1@@name}{#1}%
  \def\sysu@@default{}%
  \def\sysu@@choices{}%
  \kv@define@key{sysu@value}{name}{%
    \@namedef{sysu@#1@@name}{##1}%
  }%
  \@namedef{sysu@#1@@check}{}%
  \@namedef{sysu@#1@@code}{}%
  \kv@define@key{sysu@value}{choices}{%
    \def\sysu@@choices{##1}%
    \@namedef{sysu@#1@@reset}{}%
    \@namedef{sysu@#1@@check}{%
      \@ifundefined{%
        ifsysu@\@nameuse{sysu@#1@@name}@\@nameuse{sysu@\@nameuse{sysu@#1@@name}}%
      }{%
        \sysu@error{Invalid value "#1 = \@nameuse{sysu@\@nameuse{sysu@#1@@name}}"}%
      }%
      \@nameuse{sysu@#1@@reset}%
      \@nameuse{sysu@\@nameuse{sysu@#1@@name}@\@nameuse{sysu@\@nameuse{sysu@#1@@name}}true}%
    }%
  }%
  \kv@define@key{sysu@value}{default}{%
    \def\sysu@@default{##1}%
  }%
  \kvsetkeys{sysu@value}{#2}%
  \@namedef{sysu@\@nameuse{sysu@#1@@name}}{}%
  \kv@set@family@handler{sysu@choice}{%
    \ifx\sysu@@default\@empty
      \def\sysu@@default{##1}%
    \fi
    \expandafter\newif\csname ifsysu@\@nameuse{sysu@#1@@name}@##1\endcsname
    \expandafter\g@addto@macro\csname sysu@#1@@reset\endcsname{%
      \@nameuse{sysu@\@nameuse{sysu@#1@@name}@##1false}%
    }%
  }%
  \kvsetkeys@expandafter{sysu@choice}{\sysu@@choices}%
  \expandafter\let\csname sysu@\@nameuse{sysu@#1@@name}\endcsname\sysu@@default
  \expandafter\ifx\csname sysu@\@nameuse{sysu@#1@@name}\endcsname\@empty\else
    \@nameuse{sysu@#1@@check}%
  \fi
  \kv@define@key{sysu}{#1}{%
    \@namedef{sysu@\@nameuse{sysu@#1@@name}}{##1}%
    \@nameuse{sysu@#1@@check}%
    \@nameuse{sysu@#1@@code}%
  }%
}
\newcommand\sysu@option@hook[2]{%
  \expandafter\g@addto@macro\csname sysu@#1@@code\endcsname{#2}%
}
\sysu@define@key{
  degree = {
    choices = {
      bachelor,
      master,
      doctor,
      postdoc,
    },
    default = doctor,
  },
  degree-type = {
    choices = {
      academic,
      professional,
    },
    name = degree@type,
  },
  main-language = {
    name = main@language,
    choices = {
      chinese,
      english,
    },
  },
  language = {
    choices = {
      chinese,
      english,
    },
  },
  fontset = {
    choices = {
      windows,
      mac,
      ubuntu,
      fandol,
      none,
    },
    default = none,
  },
  system = {
    choices = {
      mac,
      unix,
      windows,
      auto,
    },
    default = auto,
  },
  font = {
    choices = {
      times,
      termes,
      xits,
      libertinus,
      lm,
      auto,
      none,
    },
    default = auto,
  },
  cjk-font = {
    name = cjk@font,
    choices = {
      windows,
      mac,
      noto,
      fandol,
      auto,
      none,
    },
    default = auto,
  },
  math-font = {
    name = math@font,
    choices = {
      xits,
      stix,
      libertinus,
      lm,
      none,
    },
    default = xits,
  },
  output = {
    choices = {
      print,
      electronic,
    },
    default = print,
  },
}
\newif\ifsysu@degree@graduate
\newcommand\sysu@set@graduate{%
  \sysu@degree@graduatefalse
  \ifsysu@degree@doctor
    \sysu@degree@graduatetrue
  \fi
  \ifsysu@degree@master
    \sysu@degree@graduatetrue
  \fi
}
\sysu@set@graduate
\sysu@option@hook{degree}{%
  \sysu@set@graduate
}
\DeclareBoolOption[false]{openright}
\DeclareComplementaryOption{openany}{openright}
\DeclareBoolOption[true]{raggedbottom}
\DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessKeyvalOptions*
\ifsysu@openright
  \PassOptionsToClass{openright}{book}
\else
  \PassOptionsToClass{openany}{book}
\fi
\PassOptionsToPackage{quiet}{fontspec}
\LoadClass[a4paper,UTF8,zihao=-4,scheme=plain,fontset=none]{ctexbook}[2017/04/01]
\RequirePackage{etoolbox}
\RequirePackage{filehook}
\RequirePackage{xparse}
\RequirePackage{geometry}%
\RequirePackage{fancyhdr}
\RequirePackage{titletoc}
\RequirePackage{notoccite}
\RequirePackage{amsmath}
\RequirePackage{unicode-math}
\RequirePackage{graphicx}
\RequirePackage[labelformat=simple]{subcaption}
\RequirePackage{pdfpages}
\includepdfset{fitpaper=true}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage{environ}
\ifsysu@raggedbottom
  \RequirePackage[bottom,perpage,hang]{footmisc}
  \raggedbottom
\else
  \RequirePackage[perpage,hang]{footmisc}
\fi
\RequirePackage{xeCJKfntef}
\RequirePackage{soul}
\RequirePackage{array}
\RequirePackage{booktabs}
\RequirePackage{url}
\AtEndPreamble{
  \@ifpackageloaded{biblatex}{}{
    \@ifpackageloaded{apacite}{}{
      \RequirePackage{natbib}
    }
  }
}
\AtEndOfPackageFile*{natbib}{
  \@ifpackageloaded{apacite}{}{
    \RequirePackage{bibunits}
  }
}
\newcommand\sysu@package@conflict[2]{
  \AtBeginOfPackageFile*{#2}{
    \sysu@error{The "#2" package is incompatible with required "#1"}
  }
}
\sysu@package@conflict{unicode-math}{amscd}
\sysu@package@conflict{unicode-math}{amsfonts}
\sysu@package@conflict{unicode-math}{amssymb}
\sysu@package@conflict{unicode-math}{bbm}
\sysu@package@conflict{unicode-math}{bm}
\sysu@package@conflict{unicode-math}{eucal}
\sysu@package@conflict{unicode-math}{eufrak}
\sysu@package@conflict{unicode-math}{mathrsfs}
\geometry{
  paper          = a4paper,  % 210 * 297mm
  marginparwidth = 2cm,
  marginparsep   = 0.5cm,
}
\newcommand\sysu@set@geometry{%
  \ifsysu@degree@bachelor
    \geometry{
      top        = 3.8cm,
      bottom     = 3.2cm,
      left       = 3.2cm,
      right      = 3cm,
      headheight = 0.5cm,
      headsep    = 1.8cm,
      footskip   = 1.45cm,
    }%
    \ifsysu@output@print
      \geometry{
        left       = 3.2cm,
        right      = 3cm,
      }%
    \else
      \geometry{
        hmargin    = 3cm,
      }%
    \fi
  \else
    \geometry{
      margin     = 3cm,
      headheight = 0.5cm,
      headsep    = 0.5cm,
      footskip   = 0.8cm,
    }%
  \fi
}
\sysu@set@geometry
\sysu@option@hook{degree}{\sysu@set@geometry}
\sysu@option@hook{output}{\sysu@set@geometry}
\def\cleardoublepage{%
  \clearpage
  \if@twoside
    \ifsysu@output@print
      \ifodd\c@page
      \else
        \thispagestyle{empty}%
        \hbox{}%
        \newpage
        \if@twocolumn
          \hbox{}\newpage
        \fi
      \fi
    \fi
  \fi
}
\renewcommand\frontmatter{%
  \cleardoublepage
  \@mainmatterfalse
  \pagenumbering{Roman}%
}
\renewcommand\mainmatter{%
  \cleardoublepage
  \@mainmattertrue
  \pagenumbering{arabic}%
}
\renewcommand\backmatter{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \@mainmatterfalse
  \sysusetup{toc-depth = 0}%
}
\ifsysu@fontset@mac
  \sysusetup{
    font     = times,
    cjk-font = mac,
  }
\else
  \ifsysu@fontset@windows
    \sysusetup{
      font     = times,
      cjk-font = windows,
    }
  \else
    \ifsysu@fontset@fandol
      \sysusetup{
        font     = termes,
        cjk-font = fandol,
      }
    \else
      \ifsysu@fontset@ubuntu
        \sysusetup{
          font     = termes,
          cjk-font = noto,
        }
      \fi
    \fi
  \fi
\fi
\ifsysu@system@auto
  \IfFileExists{/System/Library/Fonts/Menlo.ttc}{
    \sysusetup{system = mac}
  }{
    \IfFileExists{/dev/null}{
      \IfFileExists{null:}{
        \sysusetup{system = windows}
      }{
        \sysusetup{system = unix}
      }
    }{
      \sysusetup{system = windows}
    }
  }
\fi
\let\sysu@font@family@xits\@empty
\newcommand\sysu@set@xits@names{%
  \ifx\sysu@font@family@xits\@empty
    \IfFontExistsTF{XITSMath-Regular.otf}{%
      \gdef\sysu@font@family@xits{XITS}%
      \gdef\sysu@font@style@xits@rm{Regular}%
      \gdef\sysu@font@style@xits@bf{Bold}%
      \gdef\sysu@font@style@xits@it{Italic}%
      \gdef\sysu@font@style@xits@bfit{BoldItalic}%
      \gdef\sysu@font@name@xits@math@rm{XITSMath-Regular}%
      \gdef\sysu@font@name@xits@math@bf{XITSMath-Bold}%
    }{%
      \gdef\sysu@font@family@xits{xits}%
      \gdef\sysu@font@style@xits@rm{regular}%
      \gdef\sysu@font@style@xits@bf{bold}%
      \gdef\sysu@font@style@xits@it{italic}%
      \gdef\sysu@font@style@xits@bfit{bolditalic}%
      \gdef\sysu@font@name@xits@math@rm{xits-math}%
      \gdef\sysu@font@name@xits@math@bf{xits-mathbold}%
    }%
  \fi
}
\let\sysu@font@family@libertinus\@empty
\newcommand\sysu@set@libertinus@names{%
  \ifx\sysu@font@family@libertinus\@empty
    \IfFontExistsTF{LibertinusSerif-Regular.otf}{%
      \gdef\sysu@font@family@libertinus@serif{LibertinusSerif}%
      \gdef\sysu@font@family@libertinus@sans{LibertinusSans}%
      \gdef\sysu@font@name@libertinus@math{LibertinusMath-Regular}%
      \gdef\sysu@font@style@libertinus@rm{Regular}%
      \gdef\sysu@font@style@libertinus@bf{Bold}%
      \gdef\sysu@font@style@libertinus@it{Italic}%
      \gdef\sysu@font@style@libertinus@bfit{BoldItalic}%
    }{%
      \gdef\sysu@font@family@libertinus@serif{libertinusserif}%
      \gdef\sysu@font@family@libertinus@sans{libertinussans}%
      \gdef\sysu@font@name@libertinus@math{libertinusmath-regular}%
      \gdef\sysu@font@style@libertinus@rm{regular}%
      \gdef\sysu@font@style@libertinus@bf{bold}%
      \gdef\sysu@font@style@libertinus@it{italic}%
      \gdef\sysu@font@style@libertinus@bfit{bolditalic}%
    }%
  \fi
}
\ifsysu@font@auto
  \ifsysu@system@unix
    \sysusetup{font=termes}
  \else
    \sysusetup{font=times}
  \fi
\fi
\newcommand\sysu@load@font@times{%
  \setmainfont{Times New Roman}%
  \setsansfont{Arial}%
  \ifsysu@system@mac
    \setmonofont{Menlo}[Scale = MatchLowercase]%
  \else
    \setmonofont{Courier New}[Scale = MatchLowercase]%
  \fi
}
\newcommand\sysu@load@font@termes{%
  \setmainfont{texgyretermes}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
  ]%
  \sysu@load@texgyre@sans@mono
}
\newcommand\sysu@load@texgyre@sans@mono{%
  \setsansfont{texgyreheros}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
  ]%
  \setmonofont{texgyrecursor}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
    Ligatures      = CommonOff,
  ]%
}
\newcommand\sysu@load@font@xits{%
  \sysu@set@xits@names
  \setmainfont{\sysu@font@family@xits}[
    Extension      = .otf,
    UprightFont    = *-\sysu@font@style@xits@rm,
    BoldFont       = *-\sysu@font@style@xits@bf,
    ItalicFont     = *-\sysu@font@style@xits@it,
    BoldItalicFont = *-\sysu@font@style@xits@bfit,
  ]%
  \sysu@load@texgyre@sans@mono
}
\newcommand\sysu@load@font@libertinus{%
  \sysu@set@libertinus@names
  \setmainfont{\sysu@font@family@libertinus@serif}[
    Extension      = .otf,
    UprightFont    = *-\sysu@font@style@libertinus@rm,
    BoldFont       = *-\sysu@font@style@libertinus@bf,
    ItalicFont     = *-\sysu@font@style@libertinus@it,
    BoldItalicFont = *-\sysu@font@style@libertinus@bfit,
  ]%
  \setsansfont{\sysu@font@family@libertinus@sans}[
    Extension      = .otf,
    UprightFont    = *-\sysu@font@style@libertinus@rm,
    BoldFont       = *-\sysu@font@style@libertinus@bf,
    ItalicFont     = *-\sysu@font@style@libertinus@it,
  ]%
  \setmonofont{lmmonolt10}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-oblique,
    BoldItalicFont = *-boldoblique,
  ]%
}
\@namedef{sysu@load@font@lm}{%
  \setmainfont{lmroman10}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
  ]%
  \setsansfont{lmsans10}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-oblique,
    BoldItalicFont = *-boldoblique,
  ]%
  \setmonofont{lmmonolt10}[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-oblique,
    BoldItalicFont = *-boldoblique,
  ]%
}
\newcommand\sysu@load@font{%
  \@nameuse{sysu@load@font@\sysu@font}%
}
\sysu@load@font
\sysu@option@hook{font}{\sysu@load@font}
\unimathsetup{
  math-style = ISO,
  bold-style = ISO,
  nabla      = upright,
  partial    = upright,
}
\newcommand\sysu@load@math@font@xits{%
  \sysu@set@xits@names
  \setmathfont{\sysu@font@name@xits@math@rm}[
    Extension    = .otf,
    BoldFont     = \sysu@font@name@xits@math@bf,
    StylisticSet = 8,
  ]%
  \setmathfont{\sysu@font@name@xits@math@rm}[
    Extension    = .otf,
    StylisticSet = 1,
    range        = {cal,bfcal},
  ]%
}
\newcommand\sysu@load@math@font@stix{%
  \setmathfont{STIX2Math}[
    Extension    = .otf,
    StylisticSet = 8,
  ]%
  \setmathfont{STIX2Math}[
    Extension    = .otf,
    StylisticSet = 1,
    range        = {cal,bfcal},
  ]%
}
\newcommand\sysu@load@math@font@libertinus{%
  \sysu@set@libertinus@names
  \setmathfont{\sysu@font@name@libertinus@math .otf}%
}
\newcommand\sysu@load@math@font@lm{%
  \setmathfont{latinmodern-math.otf}%
}
\newcommand\sysu@load@math@font{%
  \@nameuse{sysu@load@math@font@\sysu@math@font}
}
\sysu@load@math@font
\sysu@option@hook{math-font}{\sysu@load@math@font}
\ifsysu@cjk@font@auto
  \ifsysu@system@mac
    \sysusetup{cjk-font = mac}
  \else
    \ifsysu@system@windows
      \sysusetup{cjk-font = windows}
    \else
      \IfFontExistsTF{Noto Serif CJK SC}{
        \sysusetup{cjk-font = noto}
      }{
        \sysusetup{cjk-font = fandol}
      }
    \fi
  \fi
\fi
\newcommand\sysu@load@cjk@font@windows{%
  \xeCJKsetup{EmboldenFactor=3}%
  \setCJKmainfont{SimSun}[
    AutoFakeBold = true,
    ItalicFont   = KaiTi,
  ]%
  \setCJKsansfont{SimHei}[AutoFakeBold]%
  \setCJKmonofont{FangSong}%
  \setCJKfamilyfont{zhsong}{SimSun}[AutoFakeBold]%
  \setCJKfamilyfont{zhongsong}{STZhongsong}[AutoFakeBold]%
  \setCJKfamilyfont{zhhei}{SimHei}[AutoFakeBold]%
  \setCJKfamilyfont{zhkai}{KaiTi}%
  \setCJKfamilyfont{zhfs}{FangSong}%
}
\newcommand\sysu@load@cjk@font@mac{%
  \setCJKmainfont{Songti SC}[
    UprightFont    = * Light,
    BoldFont       = * Bold,
    ItalicFont     = Kaiti SC,
    BoldItalicFont = Kaiti SC Bold,
  ]%
  \setCJKsansfont{Heiti SC}[BoldFont=* Medium]%
  \setCJKmonofont{STFangsong}
  \setCJKfamilyfont{zhsong}{Songti SC}[
    UprightFont = * Light,
      %BoldFont  = * Bold,
  ]%
  \setCJKfamilyfont{zhhei}{Heiti SC}[
    UprightFont = * Light,
    BoldFont    = * Medium,
  ]%
  \setCJKfamilyfont{zhfs}{STFangsong}%
  \setCJKfamilyfont{zhkai}{Kaiti SC}[BoldFont = * Bold]%
  \setCJKfamilyfont{zhli}{Baoli SC}%
  \setCJKfamilyfont{zhyuan}{Yuanyi SC}[
    UprightFont = * Light,
    BoldFont    = * Bold,
  ]%
}
\newcommand\sysu@load@cjk@font@noto{%
  \setCJKmainfont{Noto Serif CJK SC}[
    UprightFont    = * Light,
    BoldFont       = * Bold,
    ItalicFont     = FandolKai-Regular,
    ItalicFeatures = {Extension = .otf},
  ]%
  \setCJKsansfont{Noto Sans CJK SC}[
    BoldFont    = * Medium,
  ]%
  \setCJKmonofont{Noto Sans Mono CJK SC}%
  \setCJKfamilyfont{zhsong}{Noto Serif CJK SC}[
    UprightFont = * Light,
    UprightFont = * Bold,
  ]%
  \setCJKfamilyfont{zhhei}{Noto Sans CJK SC}[
    BoldFont    = * Medium,
  ]%
  \setCJKfamilyfont{zhfs}{FandolFang}[
    Extension   = .otf,
    UprightFont = *-Regular,
  ]%
  \setCJKfamilyfont{zhkai}{FandolKai}[
    Extension   = .otf,
    UprightFont = *-Regular,
  ]%
}
\newcommand\sysu@load@cjk@font@fandol{%
  \setCJKmainfont{FandolSong}[
    Extension   = .otf,
    UprightFont = *-Regular,
    BoldFont    = *-Bold,
    ItalicFont  = FandolKai-Regular,
  ]%
  \setCJKsansfont{FandolHei}[
    Extension   = .otf,
    UprightFont = *-Regular,
    BoldFont    = *-Bold,
  ]%
  \setCJKmonofont{FandolFang}[
    Extension   = .otf,
    UprightFont = *-Regular,
  ]%
  \setCJKfamilyfont{zhsong}{FandolSong}[
    Extension   = .otf,
    UprightFont = *-Regular,
    BoldFont    = *-Bold,
  ]%
  \setCJKfamilyfont{zhhei}{FandolHei}[
    Extension   = .otf,
    UprightFont = *-Regular,
    BoldFont    = *-Bold,
  ]%
  \setCJKfamilyfont{zhfs}{FandolFang}[
    Extension   = .otf,
    UprightFont = *-Regular,
  ]%
  \setCJKfamilyfont{zhkai}{FandolKai}[
    Extension   = .otf,
    UprightFont = *-Regular,
  ]%
}
\ifsysu@cjk@font@none\else
  \providecommand\songti{\CJKfamily{zhsong}}
  \providecommand\zhongsong{\CJKfamily{zhongsong}}
  \providecommand\heiti{\CJKfamily{zhhei}}
  \providecommand\fangsong{\CJKfamily{zhfs}}
  \providecommand\kaishu{\CJKfamily{zhkai}}
\fi
\newcommand\sysu@load@cjk@font{%
  \@nameuse{sysu@load@cjk@font@\sysu@cjk@font}%
}
\sysu@load@cjk@font
\sysu@option@hook{cjk-font}{\sysu@load@cjk@font}
\renewcommand\normalsize{%
  \@setfontsize\normalsize{12bp}{20bp}%
  \abovedisplayskip 6bp%
  \abovedisplayshortskip 6bp%
  \belowdisplayshortskip 6bp%
  \belowdisplayskip \abovedisplayskip
}
\normalsize
\ifx\MakeRobust\@undefined \else
    \MakeRobust\normalsize
\fi
\DeclareRobustCommand\small{%
   \@setfontsize\small{10.5bp}{17.5bp}%
   \abovedisplayskip 6bp%
   \abovedisplayshortskip 6bp%
   \belowdisplayshortskip 6bp%
   \def\@listi{\leftmargin\leftmargini
               \topsep \z@skip
               \parsep \z@skip
               \itemsep \z@skip}%
   \belowdisplayskip \abovedisplayskip
}
\DeclareRobustCommand\footnotesize{%
   \@setfontsize\footnotesize{9bp}{15bp}%
   \abovedisplayskip 6bp%
   \abovedisplayshortskip 6bp%
   \belowdisplayshortskip 6bp%
   \def\@listi{\leftmargin\leftmargini
               \topsep \z@skip
               \parsep \z@skip
               \itemsep \z@skip}%
   \belowdisplayskip \abovedisplayskip
}
\DeclareRobustCommand\scriptsize{\@setfontsize\scriptsize{7.5bp}{12.5bp}}
\DeclareRobustCommand\tiny{\@setfontsize\tiny{6.5bp}{10.83bp}}
\DeclareRobustCommand\large{\@setfontsize\large{15bp}{25bp}}
\DeclareRobustCommand\Large{\@setfontsize\Large{18bp}{30bp}}
\DeclareRobustCommand\LARGE{\@setfontsize\LARGE{22bp}{36.67bp}}
\DeclareRobustCommand\huge{\@setfontsize\huge{24bp}{40bp}}
\DeclareRobustCommand\Huge{\@setfontsize\Huge{26bp}{43.33bp}}
\def\sysu@def@fontsize#1#2{%
  \expandafter\newcommand\csname #1\endcsname[1][1.3]{%
    \fontsize{#2}{##1\dimexpr #2}\selectfont}}
\sysu@def@fontsize{chuhao}{42bp}
\sysu@def@fontsize{xiaochu}{36bp}
\sysu@def@fontsize{yihao}{26bp}
\sysu@def@fontsize{xiaoyi}{24bp}
\sysu@def@fontsize{erhao}{22bp}
\sysu@def@fontsize{xiaoer}{18bp}
\sysu@def@fontsize{sanhao}{16bp}
\sysu@def@fontsize{xiaosan}{15bp}
\sysu@def@fontsize{sihao}{14bp}
\sysu@def@fontsize{xiaosi}{12bp}
\sysu@def@fontsize{wuhao}{10.5bp}
\sysu@def@fontsize{xiaowu}{9bp}
\sysu@def@fontsize{liuhao}{7.5bp}
\sysu@def@fontsize{xiaoliu}{6.5bp}
\sysu@def@fontsize{qihao}{5.5bp}
\sysu@def@fontsize{bahao}{5bp}
\sysusetup{main-language=\sysu@language}%
\let\sysu@main@language\sysu@language
\sysu@option@hook{language}{%
  \ifx\@begindocumenthook\@undefined\else
    \sysusetup{main-language=\sysu@language}%
    \let\sysu@main@language\sysu@language
  \fi
}
\newcommand\sysu@reset@main@language{%
    \sysusetup{language = \sysu@main@language}%
    \let\sysu@language\sysu@main@language
}
\newcommand\sysu@set@chapter@names{%
  \ifsysu@main@language@chinese
    \ctexset{
      chapter/name   = {第,章},
      chapter/number = \chinese{chapter},
    }%
    \def\bibname{参考文献}%
    \def\appendixname{附录}%
    \def\indexname{索引}%
    \def\sysu@acknowledgements@name{致\quad 谢}%
    \ifsysu@degree@bachelor
      \def\contentsname{目\quad 录}%
      \def\listfigurename{插图索引}%
      \def\listtablename{表格索引}%
      \def\sysu@list@figure@table@name{插图和附表索引}%
      \def\sysu@list@algorithm@name{算法索引}%
      \def\listequationname{公式索引}%
      \def\sysu@denotation@name{主要符号对照表}%
      \def\sysu@resume@name{在学期间参加课题的研究成果}%
    \else
      \def\listfigurename{插图清单}%
      \def\listtablename{附表清单}%
      \def\sysu@list@figure@table@name{插图和附表清单}%
      \def\sysu@list@algorithm@name{算法清单}%
      \def\listequationname{公式清单}%
      \ifsysu@degree@graduate
        \def\contentsname{目\quad 录}%
        \def\sysu@denotation@name{符号和缩略语说明}%
        \def\sysu@resume@name{在学期间完成的相关学术成果}%
      \else  % degree = postdoc
        \def\contentsname{目\qquad 次}%
        \def\sysu@denotation@name{符号表}%
        \def\sysu@resume@name{发表的学术论文与科研成果}%
      \fi
    \fi
  \else
    \ifsysu@main@language@english
      \ctexset{
        chapter/name   = \chaptername\space,
      }%
      \def\indexname{Index}%
      \ifsysu@degree@bachelor
        \def\contentsname{CONTENTS}%
        \def\listfigurename{FIGURES}%
        \def\listtablename{TABLES}%
        \def\sysu@list@figure@table@name{FIGURES AND TABLES}%
        \def\sysu@list@algorithm@name{ALGORITHMS}%
        \def\listequationname{EQUATIONS}%
        \def\sysu@denotation@name{ABBREVIATIONS}%
        \def\bibname{REFERENCES}%
        \def\appendixname{APPENDIX}%
        \def\sysu@acknowledgements@name{ACKNOWLEDGEMENTS}%
        \def\sysu@resume@name{PUBLICATIONS}%
      \else
        \def\contentsname{Contents}%
        \def\listfigurename{List of Figures}%
        \def\listtablename{List of Tables}%
        \def\sysu@list@figure@table@name{List of Figures and Tables}%
        \def\sysu@list@algorithm@name{List of Algorithms}%
        \def\listequationname{List of Equations}%
        \def\sysu@denotation@name{Nomenclature}%
        \def\bibname{Bibliography}%
        \def\appendixname{Appendix}%
        \def\sysu@acknowledgements@name{Acknowledgements}%
        \def\sysu@resume@name{Resume and Academic Achievements}%
      \fi
    \fi
  \fi
}
\sysu@set@chapter@names
\sysu@option@hook{degree}{\sysu@set@chapter@names}
\sysu@option@hook{main-language}{\sysu@set@chapter@names}
\newcommand\sysu@set@names{%
  \ifsysu@language@chinese
    \ctexset{
      figurename = 图,
      tablename  = 表,
    }%
    \def\sysu@algorithm@name{算法}%
    \def\sysu@equation@name{公式}%
    \def\sysu@assumption@name{假设}%
    \def\sysu@definition@name{定义}%
    \def\sysu@proposition@name{命题}%
    \def\sysu@lemma@name{引理}%
    \def\sysu@theorem@name{定理}%
    \def\sysu@axiom@name{公理}%
    \def\sysu@corollary@name{推论}%
    \def\sysu@exercise@name{练习}%
    \def\sysu@example@name{例}%
    \def\sysu@remark@name{注释}%
    \def\sysu@problem@name{问题}%
    \def\sysu@conjecture@name{猜想}%
    \def\sysu@proof@name{证明}%
    \def\sysu@theorem@separator{：}%
  \else
    \ifsysu@language@english
      \ctexset{
        figurename = {Figure},
        tablename  = {Table},
      }%
      \def\sysu@algorithm@name{Algorithm}%
      \def\sysu@equation@name{Equation}%
      \def\sysu@assumption@name{Assumption}%
      \def\sysu@definition@name{Definition}%
      \def\sysu@proposition@name{Proposition}%
      \def\sysu@lemma@name{Lemma}%
      \def\sysu@theorem@name{Theorem}%
      \def\sysu@axiom@name{Axiom}%
      \def\sysu@corollary@name{Corollary}%
      \def\sysu@exercise@name{Exercise}%
      \def\sysu@example@name{Example}%
      \def\sysu@remark@name{Remark}%
      \def\sysu@problem@name{Problem}%
      \def\sysu@conjecture@name{Conjecture}%
      \def\sysu@proof@name{Proof}%
      \def\sysu@theorem@separator{: }%
    \fi
  \fi
}
\sysu@set@names
\sysu@option@hook{language}{\sysu@set@names}
\xeCJKDeclareCharClass{CJK}{"2460 -> "2473}
\xeCJKDeclareCharClass{CJK}{"2605}
\newcommand\sysu@set@punctuations{%
  \ifsysu@language@chinese
    \xeCJKDeclareCharClass{FullLeft}{"2018, "201C}%
    \xeCJKDeclareCharClass{FullRight}{
      "00B7, "2019, "201D, "2013, "2014, "2025, "2026, "2E3A,
    }%
  \else
    \ifsysu@language@english
      \xeCJKDeclareCharClass{HalfLeft}{"2018, "201C}%
      \xeCJKDeclareCharClass{HalfRight}{
        "00B7, "2019, "201D, "2013, "2014, "2025, "2026, "2E3A,
      }%
    \fi
  \fi
}
\sysu@set@punctuations
\sysu@option@hook{language}{\sysu@set@punctuations}
\pagestyle{fancy}
\fancypagestyle{plain}{%
  \fancyhf{}%
  \renewcommand\footrulewidth{0pt}%
  \ifsysu@degree@bachelor
    \renewcommand\headrulewidth{0pt}%
    \fancyfoot[C]{
      \ifsysu@main@language@chinese
        \xiaowu
      \else
        \normalsize
      \fi
      \thepage
    }%
    \let\@mkboth\@gobbletwo
    \let\chaptermark\@gobble
  \else
    \renewcommand\headrulewidth{0.75bp}%
    \fancyhead[C]{\wuhao\leftmark}%
    \fancyfoot[C]{\wuhao\thepage}%
    \let\@mkboth\markboth
    \def\chaptermark##1{%
      \markboth{\CTEXifname{\CTEXthechapter\quad}{}##1}{}%
    }%
  \fi
  \let\sectionmark\@gobble
}
\pagestyle{plain}
\ctexset{chapter/pagestyle = plain}
\ctexset{%
  punct=quanjiao,
  space=auto,
}
\newcommand\sysu@set@indent{%
  \ifsysu@main@language@english
    \ifsysu@degree@bachelor
      \ctexset{autoindent=0.8cm}%
    \else
      \ctexset{autoindent=2}%
    \fi
  \else
    \ctexset{autoindent=2}%
  \fi
}
\sysu@set@indent
\sysu@option@hook{degree}{\sysu@set@indent}
\sysu@option@hook{main-language}{\sysu@set@indent}
\urlstyle{same}
\g@addto@macro\UrlBreaks{%
  \do0\do1\do2\do3\do4\do5\do6\do7\do8\do9%
  \do\A\do\B\do\C\do\D\do\E\do\F\do\G\do\H\do\I\do\J\do\K\do\L\do\M
  \do\N\do\O\do\P\do\Q\do\R\do\S\do\T\do\U\do\V\do\W\do\X\do\Y\do\Z
  \do\a\do\b\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j\do\k\do\l\do\m
  \do\n\do\o\do\p\do\q\do\r\do\s\do\t\do\u\do\v\do\w\do\x\do\y\do\z
}
\Urlmuskip=0mu plus 0.1mu
\partopsep=\z@skip
\def\@listi{\leftmargin\leftmargini
            \parsep \z@skip
            \topsep \z@skip
            \itemsep\z@skip}
\let\@listI\@listi
\@listi
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep    \z@skip
              \parsep    \z@skip
              \itemsep   \z@skip}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep    \z@skip
              \parsep    \z@skip
              \partopsep \z@skip
              \itemsep   \z@skip}
\setlist{nosep}
\newcommand\sysu@circled[1]{%
  \ifnum#1 >10\relax
    \sysu@error{%
      Too many footnotes in this page.
      Keep footnote less than 10%
    }%
  \fi
  {\symbol{\the\numexpr#1+"245F\relax}}%
}
\renewcommand{\thefootnote}{\sysu@circled{\c@footnote}}
\renewcommand{\thempfootnote}{\sysu@circled{\c@mpfootnote}}
\def\footnoterule{\vskip-3\p@\hrule\@width0.3\textwidth\@height0.4\p@\vskip2.6\p@}
\footnotemargin=13.5bp
\long\def\@makefntext#1{%
  \begingroup
    % 序号取消上标
    \def\@makefnmark{\hbox{\normalfont\@thefnmark}}%
    \xiaowu
    \ifFN@hangfoot
      \bgroup
      \setbox\@tempboxa\hbox{%
        \ifdim\footnotemargin>\z@
          \hb@xt@\footnotemargin{\@makefnmark\hss}%
        \else
          \@makefnmark
        \fi
      }%
      \leftmargin\wd\@tempboxa
      \rightmargin\z@
      \linewidth \columnwidth
      \advance \linewidth -\leftmargin
      \parshape \@ne \leftmargin \linewidth
      % \footnotesize
      \xiaowu
      \@setpar{{\@@par}}%
      \leavevmode
      \llap{\box\@tempboxa}%
      \parskip\hangfootparskip\relax
      \parindent\hangfootparindent\relax
    \else
      \parindent1em%
      \noindent
      \ifdim\footnotemargin>\z@
        \hb@xt@ \footnotemargin{\hss\@makefnmark}%
      \else
        \ifdim\footnotemargin=\z@
          \llap{\@makefnmark}%
        \else
          \llap{\hb@xt@ -\footnotemargin{\@makefnmark\hss}}%
        \fi
      \fi
    \fi
    \footnotelayout#1%
    \ifFN@hangfoot
      \par\egroup
    \fi
  \endgroup
}
\newcommand\sysu@set@math@ellipsis{%
  \ifsysu@language@chinese
    \DeclareRobustCommand\mathellipsis{\mathinner{\unicodecdots}}%
  \else
    \ifsysu@language@english
      \DeclareRobustCommand\mathellipsis{\mathinner{\unicodeellipsis}}%
    \fi
  \fi
}
\sysu@set@math@ellipsis
\sysu@option@hook{language}{\sysu@set@math@ellipsis}
\protected\def\le{\leqslant}
\protected\def\ge{\geqslant}
\AtBeginDocument{%
  \renewcommand\leq{\leqslant}%
  \renewcommand\geq{\geqslant}%
}
\removenolimits{%
  \int\iint\iiint\iiiint\oint\oiint\oiiint
  \intclockwise\varointclockwise\ointctrclockwise\sumint
  \intbar\intBar\fint\cirfnint\awint\rppolint
  \scpolint\npolint\pointint\sqint\intlarhk\intx
  \intcap\intcup\upint\lowint
}
\AtBeginDocument{%
  \renewcommand{\Re}{\operatorname{Re}}%
  \renewcommand{\Im}{\operatorname{Im}}%
}
\AtBeginDocument{%
  \renewcommand\nabla{\mbfnabla}%
}
\DeclareRobustCommand\bm[1]{{\symbf{#1}}}
\DeclareRobustCommand\boldsymbol[1]{{\symbf{#1}}}
\newcommand\square{\mdlgwhtsquare}
\AtBeginDocument{%
  \renewcommand\checkmark{\ensuremath{✓}}%
}
\allowdisplaybreaks[4]
\renewcommand\theequation{\ifnum \c@chapter>\z@ \thechapter-\fi\@arabic\c@equation}
\def\fps@figure{h}
\def\fps@table{h}
\setlength{\floatsep}{6bp}
\setlength{\textfloatsep}{6bp}
\setlength{\intextsep}{6bp}
\setlength{\@fptop}{0bp \@plus1.0fil}
\setlength{\@fpsep}{12bp \@plus2.0fil}
\setlength{\@fpbot}{0bp \@plus1.0fil}
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}
\patchcmd\@floatboxreset{%
  \normalsize
}{%
  \fontsize{11bp}{14.3bp}\selectfont
  \renewcommand\arraystretch{1.4}%
}{}{\sysu@patch@error{\@floatboxreset}}
\renewcommand{\thetable}{\arabic{chapter}-\arabic{table}}
\renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}}

\newcommand\sysu@caption@font{}
\newcommand\sysu@set@caption@font{%
  \ifsysu@degree@bachelor
    \renewcommand\sysu@caption@font{\fontsize{11bp}{15bp}\selectfont}%
  \else
    \renewcommand\sysu@caption@font{\fontsize{11bp}{14.3bp}\selectfont}%
  \fi
}
\sysu@set@caption@font
\sysu@option@hook{degree}{\sysu@set@caption@font}
\DeclareCaptionFont{sysu}{\sysu@caption@font}
\captionsetup{
  format         = hang,
  font           = sysu,
  labelsep       = quad,
  aboveskip      = 6bp,
  belowskip      = 6bp,
  figureposition = bottom,
  tableposition  = top,
}
\captionsetup[sub]{font=sysu}
\renewcommand{\thesubfigure}{(\alph{subfigure})}
\renewcommand{\thesubtable}{(\alph{subtable})}
\heavyrulewidth=1.5bp
\lightrulewidth=1bp
\AtEndOfPackageFile*{threeparttable}{
  \g@addto@macro\TPT@defaults{\wuhao}
}
\newcommand{\sysu@statement@name}{声明}
  \newcommand{\sysu@abstract@name}{摘\quad 要}
  \newcommand{\sysu@abstract@name@en}{ABSTRACT}
\ctexset{%
  chapter = {
    nameformat   = {},
    numberformat = {},
    titleformat  = \xiaoer\heiti,
    aftername    = \ \ ,
    fixskip      = true,
    afterindent  = true,
    lofskip      = 0pt,
    lotskip      = 0pt,
  },
  section = {
    titleformat  = \xiaosan\songti\textbf,
    aftername    = \quad,
    afterindent  = true,
  },
  subsection = {
    titleformat  = \sihao\songti\textbf,
    aftername    = \quad,
    afterindent  = true,
  },
  subsubsection = {
    aftername    = \quad,
    afterindent  = true,
  },
  paragraph/afterindent = true,
  subparagraph/afterindent = true,
}
\newcommand\sysu@set@section@format{%
  \ifsysu@degree@bachelor
    \ctexset{%
      chapter = {
        format     = \centering\sffamily\fontsize{15bp}{20bp}\selectfont,
        beforeskip = 30bp,
        afterskip  = 20bp,
      },
      section = {
        format     = \sffamily\fontsize{14bp}{18bp}\selectfont,
        beforeskip = 25bp,
        afterskip  = 12bp,
      },
      subsection = {
        format     = \sffamily\fontsize{13bp}{15bp}\selectfont,
        beforeskip = 12bp,
        afterskip  = 6bp,
      },
      subsubsection = {
        format     = \sffamily\fontsize{12bp}{14bp}\selectfont,
        beforeskip = 12bp,
        afterskip  = 6bp,
      },
    }%
    \ifsysu@main@language@chinese
      \ctexset{chapter/number = \thechapter}%
    \else
      \ctexset{chapter/number = \sysu@english@number{chapter}}%
    \fi
  \else
    \ctexset{%
      chapter = {
        format     = \centering\sffamily\sanhao,
        beforeskip = 27bp,
        afterskip  = 47bp,
      },
      section = {
        format     = \sffamily\fontsize{14bp}{20bp}\selectfont,
        beforeskip = 24bp,
        afterskip  = 6bp,
      },
      subsection = {
        format     = \sffamily\fontsize{13bp}{20bp}\selectfont,
        beforeskip = 12bp,
        afterskip  = 6bp,
      },
      subsubsection = {
        format     = \sffamily\fontsize{12bp}{20bp}\selectfont,
        beforeskip = 12bp,
        afterskip  = 6bp,
      },
    }%
  \fi
}
\sysu@set@section@format
\sysu@option@hook{degree}{\sysu@set@section@format}
\newcommand\sysu@english@number[1]{%
  \expandafter\ifcase\csname c@#1\endcsname
    Zero\or
    One\or
    Two\or
    Three\or
    Four\or
    Five\or
    Six\or
    Seven\or
    Eight\or
    Nine\or
    Ten\or
    Eleven\or
    Twelve\or
    Thirteen\or
    Fourteen\or
    Fifteen\or
    Sixteen\or
    Seventeen\or
    Eighteen\or
    Nineteen\or
    Twenty\or
    \sysu@error{You are genius}%
  \fi
}
\newcommand\sysu@pdfbookmark[2]{}
\newcommand\sysu@phantomsection{}
\NewDocumentCommand\sysu@chapter{s o m o}{%
  \IfBooleanF{#1}{%
    \sysu@error{You have to use the star form: \string\sysu@chapter*}%
  }%
  \if@openright\cleardoublepage\else\clearpage\fi%
  \IfValueTF{#2}{%
    \ifthenelse{\equal{#2}{}}{%
      \sysu@pdfbookmark{0}{#3}%
    }{%
      \sysu@phantomsection
      \addcontentsline{toc}{chapter}{#2}%
    }%
  }{%
    \sysu@phantomsection
    \addcontentsline{toc}{chapter}{#3}%
  }%
  \ifsysu@degree@bachelor\ctexset{chapter/beforeskip=40bp}\fi
  \chapter*{#3}%
  \ifsysu@degree@bachelor\ctexset{chapter/beforeskip=30bp}\fi
  \IfValueTF{#4}{%
    \ifthenelse{\equal{#4}{}}{%
      \@mkboth{}{}%
    }{%
      \@mkboth{#4}{#4}%
    }%
  }{%
    \@mkboth{#3}{#3}%
  }%
}
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{1}
\renewcommand\tableofcontents{%
  \ifsysu@degree@graduate
    \sysu@chapter*{\contentsname}%
  \else
    \sysu@chapter*[]{\contentsname}%
  \fi
  \@starttoc{toc}%
}
\sysu@define@key{
  toc-chapter-style = {
    name = toc@chapter@style,
    choices = {
      arial,
      times,
    },
    default = arial,
  },
}
\newcommand\sysu@leaders{\titlerule*[4bp]{.}}
\newcommand\sysu@set@toc@format{%
  \contentsmargin{\z@}%
  \ifsysu@degree@bachelor
    \ifsysu@main@language@chinese
      \titlecontents{chapter}
        [\z@]{\addvspace{6bp}
          \ifsysu@toc@chapter@style@arial
            \sffamily
          \else
            \heiti
          \fi
        }
        {\contentspush{\thecontentslabel\quad}}{}
        {\rmfamily\sysu@leaders\thecontentspage}%
      \titlecontents{section}
        [1em]{}
        {\contentspush{\thecontentslabel\quad}}{}
        {\sysu@leaders\thecontentspage}%
      \titlecontents{subsection}
        [1.5em]{}
        {\contentspush{\thecontentslabel\quad}}{}
        {\sysu@leaders\thecontentspage}%
    \else
      \ifsysu@main@language@english
        \titlecontents{chapter}
          [\z@]{\addvspace{6bp}\sffamily}
          {\contentspush{\thecontentslabel\quad}}{}
          {\rmfamily\sysu@leaders\thecontentspage}%
        \titlecontents{section}
          [0.5cm]{}
          {\contentspush{\thecontentslabel\quad}}{}
          {\sysu@leaders\thecontentspage}%
        \titlecontents{subsection}
          [1cm]{}
          {\contentspush{\thecontentslabel\quad}}{}
          {\sysu@leaders\thecontentspage}%
      \fi
    \fi
  \else
    \titlecontents{chapter}
      [\z@]{\addvspace{6bp}\sffamily}
      {\contentspush{\thecontentslabel\quad}}{}
      {\rmfamily\sysu@leaders\thecontentspage}%
    \titlecontents{section}
      [1em]{}
      {\contentspush{\thecontentslabel\quad}}{}
      {\sysu@leaders\thecontentspage}%
    \titlecontents{subsection}
      [2em]{}
      {\contentspush{\thecontentslabel\quad}}{}
      {\sysu@leaders\thecontentspage}%
  \fi
}
\sysu@set@toc@format
\sysu@option@hook{degree}{\sysu@set@toc@format}
\sysu@define@key{
  secret-level = {
    name = secret@level,
  },
  secret-year = {
    name = secret@year,
  },
  title = {
    default = {标题},
  },
  title* = {
      default = {Title},
      name = title@en,
  },
  author = {
    default = {姓名},
  },
  supervisor = {
    default = {导师姓名},
  },
  supervisor-title = {
    default = {教授},
    name = supervisor@title,
  },
  committee-chair = {
      default = {},
      name = committee@chair,
  },
  committee-member1 = {
      default = {},
      name = committee@one,
  },
  committee-member2 = {
      default = {},
      name = committee@two,
  },
  committee-member3 = {
      default = {},
      name = committee@three,
  },
  committee-member4 = {
      default = {},
      name = committee@four,
  },
  committee-member5 = {
      default = {},
      name = committee@five,
  },
  series-id = {
      default = {},
      name = series@number,
  },
  degree-name = {
    default = {硕士},
    name    = degree@name,
  },
  department = {
    default = {计算机学院},
  },
  discipline = {
    % default = {计算机科学与技术},
  },
  discipline* = {
    % default = {Computer Science and Technology},
    name    = discipline@en,
  },
  date = {
    default = {\the\year-\two@digits{\month}-\two@digits{\day}},
  },
  include-spine = {
    name = include@spine,
    choices = {
      false,
    },
    default = false,
  },
}
\newcommand\sysu@format@date[2]{%
  \edef\sysu@@date{#2}%
  \def\sysu@@process@date##1-##2-##3\@nil{%
    #1{##1}{##2}{##3}%
  }%
  \expandafter\sysu@@process@date\sysu@@date\@nil
}
\newcommand\sysu@date@zh@digit[3]{#1 年 \number#2 月 \number#3 日}
\newcommand\sysu@date@zh@digit@short[3]{#1 年 \number#2 月}
\newcommand\sysu@date@zh@short[3]{\zhdigits{#1}年\zhnumber{#2}月}
\newcommand\sysu@date@month[1]{%
  \ifcase\number#1\or
    January\or February\or March\or April\or May\or June\or
    July\or August\or September\or October\or November\or December%
  \fi
}
\newcommand\sysu@date@en@short[3]{\sysu@date@month{#2}, #1}
\newcommand\sysu@underline[2][6em]{\hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt}
\newcommand\sysu@CJKunderline[2][6em]{\CJKunderline*{\hb@xt@ #1{\hss#2\hss}}}
\newcommand\sysu@fixed@box[2]{%
  \begingroup
    \def\CJKglue{\hskip 0pt plus 2filll minus 1filll}%
    \makebox[#1][l]{#2}%
  \endgroup
}
\newbox\sysu@stretch@box
\newcommand\sysu@stretch[2]{%
  \sbox\sysu@stretch@box{#2}%
  \ifdim \wd\sysu@stretch@box < #1\relax
    \begingroup
      \def\CJKglue{\hskip 0pt plus 2filll}%
      \makebox[#1][l]{#2}%
    \endgroup
  \else
    \box\sysu@stretch@box
  \fi
}
\newbox\sysu@pad@box
\newcommand\sysu@pad[2]{%
  \sbox\sysu@pad@box{#2}%
  \ifdim \wd\sysu@pad@box < #1\relax
    \makebox[#1][l]{\box\sysu@pad@box}%
  \else
    \box\sysu@pad@box
  \fi
}
\newcounter{sysu@csl@count}
\newcommand\sysu@name@title@process[1]{%
  \ifcase\c@sysu@csl@count  % == 0
    \gdef\sysu@@name{#1}%
  \or  % == 1
    \gdef\sysu@@title{#1}%
  \fi
  \stepcounter{sysu@csl@count}%
}
\newcommand\sysu@name@title@format[2]{%
  \sysu@pad{3cm}{\sysu@stretch{4em}{#1}}%
  \sysu@stretch{3em}{#2}%
}
\newcommand\sysu@name@title[1]{%
  \setcounter{sysu@csl@count}{0}%
  \gdef\sysu@@name{}%
  \gdef\sysu@@title{}%
  \expandafter\comma@parse\expandafter{#1}{\sysu@name@title@process}%
  \sysu@name@title@format{\sysu@@name}{\sysu@@title}%
}
\newcommand\makecover{
    \cleardoublepage
    \sysu@pdfbookmark{-2}{\sysu@title}
    \sysu@coverpage
    \clearpage
}
\newcommand\sysu@coverpage{
    \sysusetup{language = chinese}
    \ifsysu@degree@doctor
        \sysu@coverpage@graduate@academic
    \else
        \ifsysu@degree@type@professional
            \sysu@coverpage@graduate@professional
        \else
            \sysu@coverpage@graduate@academic
        \fi
    \fi
}
\newcommand\sysu@coverpage@secret{
    {\kaishu\hfill 密级: \sysu@pad{4em}{\sysu@secret@level}\relax}\\
    {\kaishu\hfill 编号: \sysu@pad{4em}{\sysu@series@number}\relax}
}
\newcommand\sysu@coverpage@graduate@academic{%
  \newgeometry{
    top     = 3cm,
    bottom  = 3cm,
    hmargin = 3cm,
  }%
  \thispagestyle{empty}%
  \null\vskip 0.2cm%
  \begingroup
    \centering
    \sysu@coverpage@secret
    \vskip 2cm
    {\sysu@coverpage@title}%
    \vskip 0.5cm
  \begingroup
    \def\CJKglue{\hskip 1bp}%
    \CJKfamily+{}\chuhao\zhongsong
    \textbf{\sysu@degree@name 学位论文}\par
  \endgroup
  \vskip 1cm
  \begingroup
  \begin{tabular}{p{13cm}}
      {\parbox[t][2cm][c]{13cm}{\noindent\centering\xiaoer\sysu@title}}\\
    \hline
      {\parbox[t][2cm][c]{13cm}{\noindent\centering\xiaoer\sysu@title@en}}\\
    \hline
  \end{tabular}\par
  \vskip 1.5cm
  \endgroup
  \begingroup
    \noindent\sihao\kaishu
    \begin{center}
        学位申请人:\ \ \sysu@underline[5.3cm]{\sysu@author}
        \vskip 0.2cm
        导师姓名及职称:\ \ \sysu@underline[4.3cm]{\sysu@supervisor\ \sysu@supervisor@title}
        \vskip 0.2cm
        专业名称:\ \ \sysu@underline[5.9cm]{\sysu@discipline}
    \end{center}
  \endgroup
  \vfill
  \begingroup
    \centering
    {\kaishu\sihao\sysu@format@date{\sysu@date@zh@digit}{\sysu@date}}\par
  \endgroup
  \endgroup
  \thispagestyle{empty}
  \clearpage
  \restoregeometry
}
\newcommand\sysu@coverpage@graduate@professional{%
  \newgeometry{
    top     = 3cm,
    bottom  = 3cm,
    hmargin = 3cm,
  }%
  \thispagestyle{empty}%
  \null\vskip 0.2cm%
  \begingroup
    \centering
    \sysu@coverpage@secret
    \vskip 2cm
    {\sysu@coverpage@title}%
    \vskip 0.5cm
  \begingroup
    \def\CJKglue{\hskip 1bp}%
    \CJKfamily+{}\xiaochu
    \sysu@underline[4.5cm]{工程 }\textbf{\sysu@degree@name\ifsysu@degree@type@professional 专业\fi 学位论文}\par
  \endgroup
  \vskip 1cm
  \begingroup
  \begin{tabular}{p{13cm}}
      {\parbox[t][2cm][c]{13cm}{\noindent\centering\xiaoer\sysu@title}}\\
    \hline
      {\parbox[t][2cm][c]{13cm}{\noindent\centering\xiaoer\sysu@title@en}}\\
    \hline
  \end{tabular}\par
  \vskip 1.5cm
  \endgroup

  % \vskip 2cm
  % \sysu@underline[12cm]{\xiaoer\sysu@title}\par
  % \vskip 1.8cm
  % \sysu@underline[12cm]{\xiaoer\sysu@title@en}\par
  % \vskip 2cm
  \begingroup
    \noindent\sihao\kaishu
    \begin{center}
        学位申请人:\ \ \sysu@underline[5.9cm]{\sysu@author}
        \vskip 0.2cm
        导师姓名及职称:\ \ \sysu@underline[4.9cm]{\sysu@supervisor\ \sysu@supervisor@title}
        \vskip 0.2cm
        专业、领域名称:\ \ \sysu@underline[5.0cm]{\sysu@discipline}
    \end{center}
  \endgroup
  \vfill
  \begingroup
    \centering
    {\kaishu\sihao\sysu@format@date{\sysu@date@zh@digit}{\sysu@date}}\par
  \endgroup
  \endgroup
  \thispagestyle{empty}
  \clearpage
  \restoregeometry
}
\renewcommand\maketitle{%
  \cleardoublepage
  \pagenumbering{Alph}%
  \sysu@pdfbookmark{-1}{\sysu@title}%
  \sysu@titlepage
  \clearpage
}
\newcommand\sysu@titlepage{%
  \sysusetup{language = chinese}%
  \ifsysu@degree@graduate
    \sysu@titlepage@graduate@academic
  \else
    \sysu@titlepage@bachelor
  \fi
  \sysu@reset@main@language
}
\newcommand\sysu@titlepage@graduate@academic{%
  \newgeometry{
    top     = 3cm,
    bottom  = 3.5cm,
    hmargin = 3.5cm,
  }%
  \thispagestyle{empty}%
  \null\vskip 0.2cm%
  \begingroup
    \centering
    \sysu@thesis@type
    \vskip 0.8cm%
    {\sysu@titlepage@title}%
    {\sysu@titlepage@title@en}%
    \vfill
    \parbox[t][8.25cm][t]{\textwidth}{\centering\sysu@titlepage@info}\par
    \vfill
    \parbox[t][1cm][b]{\textwidth}{\centering\sysu@titlepage@date}\par
  \endgroup
  \thispagestyle{empty}
  \clearpage
  \restoregeometry
}
\newcommand\sysu@titlepage@graduate@professional{%
    \sysu@titlepage@graduate@academic
}
\newcommand\sysu@titlepage@secret{%
  \sffamily\sanhao
  \ifx\sysu@secret@level\@empty
    \phantom{秘密}%
  \else
    \sysu@secret@level★\makebox[3em][c]{\sysu@secret@year}年%
  \fi\par
}
\newcommand\sysu@coverpage@title{%
    \begin{figure}[htpb]
        \centering
        \includegraphics[width=0.7\linewidth]{sysu_logo.jpg}
    \end{figure}
}

\newcommand\sysu@titlepage@title{%
  \sffamily\yihao[1.8]\sysu@title\par
}
\newcommand\sysu@titlepage@title@en{%
  \sffamily\yihao[1.8]\sysu@title@en\par
}

\newcommand\sysu@titlepage@degree{%
  \begingroup
    \def\CJKglue{\hskip 1bp}%
    \CJKfamily+{}\xiaoer
    中山大学\sysu@degree@name\ifsysu@degree@type@professional 专业\fi 学位论文\par
  \endgroup
}
\newcommand\sysu@thesis@type{
    \begingroup
        \def\CJKglue{\hskip 1bp}%
        \CJKfamily+{}\xiaoer
        中山大学\sysu@degree@name 学位论文\par
    \endgroup
}
\newcommand\sysu@titlepage@info{%
  \sysu@titlepage@info@graduate@academic
}
\newcommand\sysu@titlepage@info@tabular[4]{%
  \def\sysu@info@item##1##2##3{%
    \ifx##3\@empty\else
      \sysu@pad{#1}{\sysu@fixed@box{#2}{##1}}%
      \sysu@pad{#3}{：}%
      ##2{##3}\\
    \fi
  }%
  \fangsong\sanhao[1.95]%
  \begin{tabular}{l}%
    #4%
  \end{tabular}%
}
\newcommand\sysu@titlepage@info@graduate@academic{%
    \begingroup
    \linespread{1.1}
    \xiaosan\songti
    \begin{tabular}{ p{6cm} @{\ \ } p{9cm} }
        \hfill 专业:\  & \sysu@underline[6cm]{\sysu@discipline} \\
        \hfill 学位申请人:\  & \sysu@underline[6cm]{\sysu@author} \\
        \hfill 指导教师:\  & \sysu@underline[6cm]{\sysu@supervisor\ \sysu@supervisor@title} \\
    \end{tabular}\par
    \vspace{.8cm}
    \begin{tabular}{ p{6cm} @{\ \ } p{9cm} }
        \hfill 论文答辩委员会主席:\  & \sysu@underline[6cm]{\sysu@committee@chair} \\
        \hfill 成员:\  & \sysu@underline[6cm]{\sysu@committee@one} \\
        \hfill & \sysu@underline[6cm]{\sysu@committee@two} \\
        \hfill & \sysu@underline[6cm]{\sysu@committee@three} \\
        \hfill & \sysu@underline[6cm]{\sysu@committee@four} \\
               &
    \end{tabular}
    \endgroup\par
}

\newcommand\sysu@titlepage@date{%
  \begingroup
    \def\CJKglue{\hskip 1bp}%
    \sanhao\sysu@format@date{\sysu@date@zh@short}{\sysu@date}\par
  \endgroup
}
\newcommand\statementpage{%
  \cleardoublepage
  \thispagestyle{empty}%
  \sysu@pdfbookmark{0}{声明}%
  \sysu@phantomsection
  \includepdf[pages=-]{data/statement_page_official.pdf}
}
\newcommand{\sysu@authorization@frontdate}{%
  日\ifsysu@degree@bachelor\hspace{1em}\else\hspace{2em}\fi 期：}

\newcommand\sysu@copyright@page@graduate{%
  \cleardoublepage
  \newgeometry{
    vmargin = 3.8cm,
    hmargin = 3.2cm,
  }%

  \begingroup
    \ctexset{
      chapter = {
        format     = {\centering\sffamily\erhao},
        beforeskip = 18bp,
        afterskip  = 6bp,
      },
    }%
    \begin{center}
        {\xiaoer\heiti\textbf{原创性及使用授权声明}}
    \end{center}
    \vskip 0.5cm
    \begin{center}
        {\xiaoer\songti\textbf{论文原创性声明内容}}
    \end{center}
    本人郑重声明：所呈交的学位论文，是本人在导师的指导下，独立进行研究工作所取得的成果。除文中已经注明引用的内容外，本论文不包含任何其他个人或集体已经发表或撰写过的作品成果。对本文的研究作出重要贡献的个人和集体，均已在文中以明确方式标明。本人完全意识到本声明的法律结果由本人承担。
    \thispagestyle{empty}%
  \endgroup
  \vskip 10bp%
  \begingroup
    \fontsize{14bp}{26bp}\selectfont
  \endgroup
  \vskip0.2cm%
  \begingroup
    \noindent\xiaosi
    \hspace*{8.5cm}%
    % 作者签名：\sysu@underline[7em]\relax\hfill
    % 导师签名：\sysu@underline[7em]\relax\hspace*{1cm}\\[3pt]%
    作者签名：\sysu@underline[7em]\relax\hspace*{1cm}\\[3pt]%
    \hspace*{8.5cm}%
    % 日\hspace{2em}期：\sysu@underline[7em]\relax\hfill
    日\hspace{2em}期：\sysu@underline[7em]\relax\hspace*{1cm}%
  \endgroup

  \vspace{1cm}
  \begingroup
    \ctexset{
      chapter = {
        format     = {\centering\sffamily\erhao},
        beforeskip = 18bp,
        afterskip  = 6bp,
      },
    }%
    \begin{center}
        {\Large \textbf{学位论文使用授权声明}}
    \end{center}

本人完全了解中山大学有关保留、使用学位论文的规定，即：学校有权保留学位论文并向国家主管部门或其指定机构送交论文的电子版和纸质版；有权将学位论文用于非赢利目的的少量复制并允许论文进入学校图书馆、院系资料室被查阅；有权将学位论文的内容编入有关数据库进行检索；可以采用复印、缩印或其他方法保存学位论文；可以为建立了馆际合作关系的兄弟高校用户提供文献传递服务和交换服务。

保密论文保密期满后，适用本声明。
    \thispagestyle{empty}%
  \endgroup
  \vskip 10bp%
  \begingroup
    \fontsize{14bp}{26bp}\selectfont
  \endgroup
  \vskip0.2cm%
  \begingroup
    \noindent\xiaosi
    \hspace*{1.5cm}%
    作者签名：\sysu@underline[7em]\relax\hfill
    导师签名：\sysu@underline[7em]\relax\hspace*{1cm}\\[3pt]%
    \hspace*{1.5cm}%
    日\hspace{2em}期：\sysu@underline[7em]\relax\hfill
    日\hspace{2em}期：\sysu@underline[7em]\relax\hspace*{1cm}%
  \endgroup
  \clearpage
  \restoregeometry
}
\sysu@define@key{
  keywords,
  keywords* = {
    name = keywords@en,
  },
}
\newcommand\sysu@clist@use[2]{%
  \def\sysu@@tmp{}%
  \def\sysu@clist@processor##1{%
    \ifx\sysu@@tmp\@empty
      \def\sysu@@tmp{#2}%
    \else
      #2%
    \fi
    ##1%
  }%
  \expandafter\comma@parse\expandafter{#1}{\sysu@clist@processor}%
}
\newenvironment{abstract}{%
  \sysusetup{language = chinese}%
    \sysu@chapter*{\sysu@abstract@name}%
}{%
  \par
  \null\par
    \textsf{关键词：}%
  \sysu@clist@use{\sysu@keywords}{，}%
  \cleardoublepage
  \sysu@reset@main@language % switch back to main language
}
\newenvironment{abstract*}{%
  \sysusetup{language = english}%
    \sysu@chapter*{\sysu@abstract@name@en}%
}{%
  \par
  \null\par
  \textbf{Keywords:}\space
  \sysu@clist@use{\sysu@keywords@en}{, }%
    \vspace*{\stretch{1}}%
    %  \fi
  \cleardoublepage
  \sysu@reset@main@language % switch back to main language
}
\newcommand{\sysu@author@signature}{作者签名：}
\newcommand{\sysu@backdate}{日\hspace{1.95em}期：}
\newenvironment{statement@originality}{%
    \sysusetup{language = chinese}
    \begin{center}
        \textbf{论文原创性声明}
    \end{center}
}{%
  \vskip 0.2cm
  {\hfill\sysu@author@signature\sysu@underline[2.5cm]\relax}
  \vskip 0.2cm
  {\hfill\sysu@backdate\sysu@underline[2.5cm]\relax}
  \sysu@reset@main@language % switch back to main language
  \vspace{3cm}
}

\newcommand{\sysu@supervisor@signature}{导师签名：}
\newenvironment{statement@authorization}{%
    \sysusetup{language = chinese}
    \begin{center}
        \textbf{学位论文使用授权声明}
    \end{center}
}{%
  \vskip 0.2cm
  {\hfill\sysu@author@signature\sysu@underline[2.5cm]\relax}
  {\hfill\sysu@backdate\sysu@underline[2.5cm]\relax}
  \vskip 0.2cm
  {\hfill\sysu@supervisor@signature\sysu@underline[2.5cm]\relax}
  {\hfill\sysu@backdate\sysu@underline[2.5cm]\relax}
  \sysu@reset@main@language % switch back to main language
  \vspace{3cm}
}

\newenvironment{denotation}[1][2.5cm]{%
  \ifsysu@degree@bachelor
    \cleardoublepage
  \fi
  \ifsysu@degree@graduate
    \sysu@chapter*{\sysu@denotation@name}%
  \else
    \sysu@chapter*[]{\sysu@denotation@name}%
  \fi
  \vskip-30bp\xiaosi[1.6]\begin{sysu@denotation}[labelwidth=#1]
}{%
  \end{sysu@denotation}
}
\newlist{sysu@denotation}{description}{1}
\setlist[sysu@denotation]{%
  nosep,
  font=\normalfont,
  align=left,
  leftmargin=!, % sum of the following 3 lengths
  labelindent=0pt,
  labelwidth=2.5cm,
  labelsep*=0.5cm,
  itemindent=0pt,
}

\newenvironment{acknowledgements}{%
  \@mainmatterfalse
  \ifsysu@degree@bachelor
    \cleardoublepage
  \fi
  \sysu@chapter*{\sysu@acknowledgements@name}%
}{%
  \ifsysu@degree@bachelor
    \cleardoublepage
  \fi
}
\sysu@define@key{
  statement-page-style = {
    name = statement@page@style,
    choices = {
      empty,
      plain,
    },
    default = empty,
  },
  statement-page-number = {
    name = statement@page@number,
    choices = {
      false,
      true,
    },
    default = false,
  },
}
\sysu@option@hook{statement-page-number}{%
  \ifsysu@statement@page@number@false
    \sysusetup{statement-page-style=empty}%
  \else
    \sysusetup{statement-page-style=plain}%
  \fi
  \sysu@warning{%
    The "statement-page-number" option is deprecated.
    Use "page-style" option of \protect\statement command instead%
  }%
}
\let\acknowledgement\acknowledgements
\let\endacknowledgement\endacknowledgements
\def\sysu@listof#1{% #1: float type
  \setcounter{tocdepth}{2} % restore tocdepth in case being modified
  \@ifstar
    {\sysu@chapter*[]{\csname list#1name\endcsname}\@starttoc{\csname ext@#1\endcsname}}
    {\sysu@chapter*{\csname list#1name\endcsname}\@starttoc{\csname ext@#1\endcsname}}%
}
\renewcommand\listoffigures{%
  \sysu@listof{figure}%
}
\titlecontents{figure}
  [\z@]{}
  {\contentspush{\figurename~\thecontentslabel\quad}}{}
  {\nobreak\sysu@leaders\nobreak\hfil\thecontentspage}
\renewcommand\listoftables{%
  \sysu@listof{table}%
}
\titlecontents{table}
  [\z@]{}
  {\contentspush{\tablename~\thecontentslabel\quad}}{}
  {\sysu@leaders\thecontentspage}
\newcommand\listoffiguresandtables{%
  \sysu@chapter*{\sysu@list@figure@table@name}%
  \@starttoc{lof}%
  \par
  \null\par
  \@starttoc{lot}%
}
\def\ext@equation{loe}
\def\equcaption#1{%
  \addcontentsline{\ext@equation}{equation}%
                  {\protect\numberline{#1}}}
\newcommand\listofequations{\sysu@listof{equation}}
\titlecontents{equation}
  [0pt]{\addvspace{6bp}}
  {\sysu@equation@name~\thecontentslabel}{}
  {\nobreak\sysu@leaders\nobreak\thecontentspage}
\contentsuse{equation}{loe}
  \sysu@define@key{
    cite-style = {
      name = cite@style,
      choices = {
        super,
        inline,
        author-year,
      }
    }
  }
\PassOptionsToPackage{compress}{natbib}
\AtEndOfPackageFile*{natbib}{
  \DeclareRobustCommand\inlinecite{\@inlinecite}
  \def\@inlinecite#1{\begingroup\let\@cite\NAT@citenum\citep{#1}\endgroup}
  \let\onlinecite\inlinecite
  \newcommand\bibstyle@super{%
    \bibpunct{[}{]}{,}{s}{,}{\textsuperscript{,}}}
  \newcommand\bibstyle@inline{%
    \bibpunct{[}{]}{,}{n}{,}{,}}
  \@namedef{bibstyle@author-year}{%
    \bibpunct{(}{)}{;}{a}{,}{,}}
  \sysu@option@hook{cite-style}{\@nameuse{bibstyle@\sysu@cite@style}}
  \@namedef{bibstyle@sysuthesis-numeric}{\citestyle{super}}
  \@namedef{bibstyle@sysuthesis-author-year}{\citestyle{author-year}}
  \@namedef{bibstyle@sysuthesis-bachelor}{\citestyle{super}}
  \@namedef{bibstyle@sysuthesis-inline}{\citestyle{inline}}
  \renewcommand\NAT@citesuper[3]{\ifNAT@swa
    \if*#2*\else#2\NAT@spacechar\fi
    % \unskip\kern\p@\textsuperscript{\NAT@@open#1\NAT@@close}%
    %  \if*#3*\else\NAT@spacechar#3\fi\else #1\fi\endgroup}
    \unskip\kern\p@\textsuperscript{\NAT@@open#1\NAT@@close\if*#3*\else#3\fi}%
    \else #1\fi\endgroup}
  \renewcommand\NAT@citenum%
      [3]{\ifNAT@swa\NAT@@open\if*#2*\else#2\NAT@spacechar\fi
          % #1\if*#3*\else\NAT@cmt#3\fi\NAT@@close\else#1\fi\endgroup}
          #1\NAT@@close\textsuperscript{\if*#3*\else#3\fi}\else#1\fi\endgroup}
  \def\NAT@citexnum[#1][#2]#3{%
    \NAT@reset@parser
    \NAT@sort@cites{#3}%
    \NAT@reset@citea
    \@cite{\def\NAT@num{-1}\let\NAT@last@yr\relax\let\NAT@nm\@empty
      \@for\@citeb:=\NAT@cite@list\do
      {\@safe@activestrue
      \edef\@citeb{\expandafter\@firstofone\@citeb\@empty}%
      \@safe@activesfalse
      \@ifundefined{b@\@citeb\@extra@b@citeb}{%
        {\reset@font\bfseries?}
          \NAT@citeundefined\PackageWarning{natbib}%
        {Citation `\@citeb' on page \thepage \space undefined}}%
      {\let\NAT@last@num\NAT@num\let\NAT@last@nm\NAT@nm
        \NAT@parse{\@citeb}%
        \ifNAT@longnames\@ifundefined{bv@\@citeb\@extra@b@citeb}{%
          \let\NAT@name=\NAT@all@names
          \global\@namedef{bv@\@citeb\@extra@b@citeb}{}}{}%
        \fi
        \ifNAT@full\let\NAT@nm\NAT@all@names\else
          \let\NAT@nm\NAT@name\fi
        \ifNAT@swa
        \@ifnum{\NAT@ctype>\@ne}{%
          \@citea
          \NAT@hyper@{\@ifnum{\NAT@ctype=\tw@}{\NAT@test{\NAT@ctype}}{\NAT@alias}}%
        }{%
          \@ifnum{\NAT@cmprs>\z@}{%
          \NAT@ifcat@num\NAT@num
            {\let\NAT@nm=\NAT@num}%
            {\def\NAT@nm{-2}}%
          \NAT@ifcat@num\NAT@last@num
            {\@tempcnta=\NAT@last@num\relax}%
            {\@tempcnta\m@ne}%
          \@ifnum{\NAT@nm=\@tempcnta}{%
            \@ifnum{\NAT@merge>\@ne}{}{\NAT@last@yr@mbox}%
          }{%
            \advance\@tempcnta by\@ne
            \@ifnum{\NAT@nm=\@tempcnta}{%
              % \ifx\NAT@last@yr\relax
              %   \def@NAT@last@yr{\@citea}%
              % \else
              %   \def@NAT@last@yr{--\NAT@penalty}%
              % \fi
              \def@NAT@last@yr{-\NAT@penalty}%
            }{%
              \NAT@last@yr@mbox
            }%
          }%
          }{%
          \@tempswatrue
          \@ifnum{\NAT@merge>\@ne}{\@ifnum{\NAT@last@num=\NAT@num\relax}{\@tempswafalse}{}}{}%
          \if@tempswa\NAT@citea@mbox\fi
          }%
        }%
        \NAT@def@citea
        \else
          \ifcase\NAT@ctype
            \ifx\NAT@last@nm\NAT@nm \NAT@yrsep\NAT@penalty\NAT@space\else
              \@citea \NAT@test{\@ne}\NAT@spacechar\NAT@mbox{\NAT@super@kern\NAT@@open}%
            \fi
            \if*#1*\else#1\NAT@spacechar\fi
            \NAT@mbox{\NAT@hyper@{{\citenumfont{\NAT@num}}}}%
            \NAT@def@citea@box
          \or
            \NAT@hyper@citea@space{\NAT@test{\NAT@ctype}}%
          \or
            \NAT@hyper@citea@space{\NAT@test{\NAT@ctype}}%
          \or
            \NAT@hyper@citea@space\NAT@alias
          \fi
        \fi
      }%
      }%
        \@ifnum{\NAT@cmprs>\z@}{\NAT@last@yr}{}%
        \ifNAT@swa\else
          % \@ifnum{\NAT@ctype=\z@}{%
          %   \if*#2*\else\NAT@cmt#2\fi
          % }{}%
          \NAT@mbox{\NAT@@close}%
          \@ifnum{\NAT@ctype=\z@}{%
            \if*#2*\else\textsuperscript{#2}\fi
          }{}%
        \fi
    }{#1}{#2}%
  }%
  \renewcommand\NAT@cite%
      [3]{\ifNAT@swa\NAT@@open\if*#2*\else#2\NAT@spacechar\fi
          % #1\if*#3*\else\NAT@cmt#3\fi\NAT@@close\else#1\fi\endgroup}
          #1\NAT@@close\if*#3*\else\textsuperscript{#3}\fi\else#1\fi\endgroup}
  \def\NAT@citex%
    [#1][#2]#3{%
    \NAT@reset@parser
    \NAT@sort@cites{#3}%
    \NAT@reset@citea
    \@cite{\let\NAT@nm\@empty\let\NAT@year\@empty
      \@for\@citeb:=\NAT@cite@list\do
      {\@safe@activestrue
      \edef\@citeb{\expandafter\@firstofone\@citeb\@empty}%
      \@safe@activesfalse
      \@ifundefined{b@\@citeb\@extra@b@citeb}{\@citea%
        {\reset@font\bfseries ?}\NAT@citeundefined
                  \PackageWarning{natbib}%
        {Citation `\@citeb' on page \thepage \space undefined}\def\NAT@date{}}%
      {\let\NAT@last@nm=\NAT@nm\let\NAT@last@yr=\NAT@year
        \NAT@parse{\@citeb}%
        \ifNAT@longnames\@ifundefined{bv@\@citeb\@extra@b@citeb}{%
          \let\NAT@name=\NAT@all@names
          \global\@namedef{bv@\@citeb\@extra@b@citeb}{}}{}%
        \fi
      \ifNAT@full\let\NAT@nm\NAT@all@names\else
        \let\NAT@nm\NAT@name\fi
      \ifNAT@swa\ifcase\NAT@ctype
        \if\relax\NAT@date\relax
          \@citea\NAT@hyper@{\NAT@nmfmt{\NAT@nm}\NAT@date}%
        \else
          \ifx\NAT@last@nm\NAT@nm\NAT@yrsep
              \ifx\NAT@last@yr\NAT@year
                \def\NAT@temp{{?}}%
                \ifx\NAT@temp\NAT@exlab\PackageWarningNoLine{natbib}%
                {Multiple citation on page \thepage: same authors and
                year\MessageBreak without distinguishing extra
                letter,\MessageBreak appears as question mark}\fi
                \NAT@hyper@{\NAT@exlab}%
              \else\unskip\NAT@spacechar
                \NAT@hyper@{\NAT@date}%
              \fi
          \else
            \@citea\NAT@hyper@{%
              \NAT@nmfmt{\NAT@nm}%
              \hyper@natlinkbreak{%
                \NAT@aysep\NAT@spacechar}{\@citeb\@extra@b@citeb
              }%
              \NAT@date
            }%
          \fi
        \fi
      \or\@citea\NAT@hyper@{\NAT@nmfmt{\NAT@nm}}%
      \or\@citea\NAT@hyper@{\NAT@date}%
      \or\@citea\NAT@hyper@{\NAT@alias}%
      \fi \NAT@def@citea
      \else
        \ifcase\NAT@ctype
          \if\relax\NAT@date\relax
            \@citea\NAT@hyper@{\NAT@nmfmt{\NAT@nm}}%
          \else
          \ifx\NAT@last@nm\NAT@nm\NAT@yrsep
              \ifx\NAT@last@yr\NAT@year
                \def\NAT@temp{{?}}%
                \ifx\NAT@temp\NAT@exlab\PackageWarningNoLine{natbib}%
                {Multiple citation on page \thepage: same authors and
                year\MessageBreak without distinguishing extra
                letter,\MessageBreak appears as question mark}\fi
                \NAT@hyper@{\NAT@exlab}%
              \else
                \unskip\NAT@spacechar
                \NAT@hyper@{\NAT@date}%
              \fi
          \else
            \@citea\NAT@hyper@{%
              \NAT@nmfmt{\NAT@nm}%
              \hyper@natlinkbreak{\NAT@spacechar\NAT@@open\if*#1*\else#1\NAT@spacechar\fi}%
                {\@citeb\@extra@b@citeb}%
              \NAT@date
            }%
          \fi
          \fi
        \or\@citea\NAT@hyper@{\NAT@nmfmt{\NAT@nm}}%
        \or\@citea\NAT@hyper@{\NAT@date}%
        \or\@citea\NAT@hyper@{\NAT@alias}%
        \fi
        \if\relax\NAT@date\relax
          \NAT@def@citea
        \else
          \NAT@def@citea@close
        \fi
      \fi
      }}\ifNAT@swa\else
        % \if*#2*\else\NAT@cmt#2\fi
        \if\relax\NAT@date\relax\else\NAT@@close\fi
        \if*#2*\else\textsuperscript{#2}\fi
      \fi}{#1}{#2}}
  \renewcommand\bibsection{\sysu@chapter*{\bibname}}
  \newcommand\sysu@set@bibliography@format{%
    \ifsysu@degree@bachelor
      \renewcommand\bibfont{\fontsize{10.5bp}{17bp}\selectfont}%
      \setlength{\bibsep}{6bp \@plus 3bp \@minus 3bp}%
      \ifsysu@main@language@chinese
        \setlength{\bibhang}{21bp}%
      \else
        \setlength{\bibhang}{0.5in}%
      \fi
    \else
      \renewcommand\bibfont{\fontsize{10.5bp}{16bp}\selectfont}%
      \setlength{\bibsep}{3bp \@plus 3bp \@minus 3bp}%
      \setlength{\bibhang}{21bp}%
    \fi
  }
  \sysu@set@bibliography@format
  \sysu@option@hook{degree}{\sysu@set@bibliography@format}
  \sysu@option@hook{main-language}{\sysu@set@bibliography@format}
  \patchcmd\thebibliography{%
    \clubpenalty4000%
  }{%
    \interlinepenalty=5000\relax
    \clubpenalty=10000\relax
  }{}{\sysu@patch@error{\thebibliography}}
  \patchcmd\thebibliography{%
    \widowpenalty4000%
  }{%
    \widowpenalty=10000\relax
  }{}{\sysu@patch@error{\thebibliography}}
  \def\@biblabel#1{[#1]\hfill}
  \renewcommand\NAT@bibsetnum[1]{%
    % \settowidth\labelwidth{\@biblabel{#1}}%
    % \setlength{\leftmargin}{\labelwidth}%
    % \addtolength{\leftmargin}{\labelsep}%
    \setlength{\leftmargin}{1cm}%
    \setlength{\itemindent}{\z@}%
    \setlength{\labelsep}{0.1cm}%
    \setlength{\labelwidth}{0.9cm}%
    \setlength{\itemsep}{\bibsep}
    \setlength{\parsep}{\z@}%
    \ifNAT@openbib
      \addtolength{\leftmargin}{\bibindent}%
      \setlength{\itemindent}{-\bibindent}%
      \setlength{\listparindent}{\itemindent}%
      \setlength{\parsep}{0pt}%
    \fi
  }
}
\AtEndOfPackageFile*{biblatex}{
  \AtBeginDocument{
    \ifthenelse{\equal{\blx@bbxfile}{apa}}{\def\bibname{REFERENCES}}{}
    \ifthenelse{\equal{\blx@bbxfile}{apa6}}{\def\bibname{REFERENCES}}{}
    \ifthenelse{\equal{\blx@bbxfile}{mla}}{\def\bibname{WORKS CITED}}{}
    \ifthenelse{\equal{\blx@bbxfile}{mla-new}}{\def\bibname{WORKS CITED}}{}
  }
  \DeclareRobustCommand\inlinecite{\parencite}
  \defbibheading{bibliography}[\bibname]{\sysu@chapter*{\bibname}}
  \newcommand\sysu@set@bibliography@format{%
    \ifsysu@degree@bachelor
      \renewcommand\bibfont{\fontsize{10.5bp}{17bp}\selectfont}%
      \setlength{\bibitemsep}{6bp \@plus 3bp \@minus 3bp}%
      \ifsysu@main@language@chinese
        \setlength{\bibhang}{21bp}%
      \else
        \setlength{\bibhang}{0.5in}%
      \fi
    \else
      \renewcommand\bibfont{\fontsize{10.5bp}{16bp}\selectfont}%
      \setlength{\bibitemsep}{3bp \@plus 3bp \@minus 3bp}%
      \setlength{\biblabelsep}{0.1cm}%
      \setlength{\bibhang}{21bp}%
    \fi
  }
  \sysu@set@bibliography@format
  \sysu@option@hook{degree}{\sysu@set@bibliography@format}
  \sysu@option@hook{main-language}{\sysu@set@bibliography@format}
}
\AtEndOfPackageFile*{apacite}{
  \AtBeginDocument{
    \sysu@set@chapter@names
  }
  \renewcommand\bibliographytypesize{\fontsize{10.5bp}{17bp}\selectfont}
  \setlength{\bibitemsep}{6bp}
  \ifsysu@main@language@chinese
    \setlength{\bibleftmargin}{21bp}
    \setlength{\bibindent}{-\bibleftmargin}
  \else
    \setlength{\bibleftmargin}{0.5in}
    \setlength{\bibindent}{-\bibleftmargin}
  \fi
  \def\st@rtbibchapter{%
    \if@numberedbib%
      \chapter{\bibname}%   e.g.,   6. References
    \else%
      \sysu@chapter*{\bibname}%   e.g.,   References
    \fi%
  }%
}
\g@addto@macro\appendix{%
  \@mainmattertrue
}
\sysu@define@key{
  toc-depth = {
    name = toc@depth,
  },
}
\sysu@option@hook{toc-depth}{%
  \protected@write\@auxout{}{%
    \string\ttl@writefile{toc}{%
      \protect\setcounter{tocdepth}{\sysu@toc@depth}%
    }%
  }%
  \addtocontents{lof}{\string\let\string\contentsline\string\ttl@gobblecontents}
  \addtocontents{lot}{\string\let\string\contentsline\string\ttl@gobblecontents}
  \addtocontents{loe}{\string\let\string\contentsline\string\ttl@gobblecontents}
}
\g@addto@macro\appendix{%
  \sysusetup{
    toc-depth = 0,
  }%
}

\newenvironment{resume}{%
  \@mainmatterfalse
  \sysu@chapter*{\sysu@resume@name}%
  \ctexset{
    section = {
      format    += \centering,
      numbering = false,
    },
    subsection = {
      format     = \sffamily\fontsize{14bp}{20bp}\selectfont,
      numbering  = false,
      aftertitle = \ifsysu@language@chinese ：\else :\fi,
    },
  }%
  \ifsysu@degree@bachelor
    \ifsysu@language@english
      \sffamily\fontsize{15bp}{20bp}\selectfont,
    \fi
  \fi
}{}
\newcommand\resumeitem[1]{%
  \sysu@error{The "\protect\resumeitem" is obsolete. Please update to the new format}%
}
\newcommand\researchitem[1]{%
  \sysu@error{The "\protect\researchitem" is obsolete. Please update to the new format}%
}
\newlist{achievements}{enumerate}{1}
\setlist[achievements]{
  label      = [\arabic*],
  align      = left,
  leftmargin = 10mm,
  topsep     = 6bp,
  parsep     = 0bp,
  partopsep  = 0bp,
  itemsep    = 6bp,
  labelsep   = !,
  before     = {
    \ifsysu@degree@graduate
      \fontsize{12bp}{16bp}\selectfont
    \fi
  },
  resume     = achievements,
}
\newenvironment{publications}{%
  \sysu@deprecate{"publications" environment}{"achievements"}%
  \begin{achievements}%
}{%
  \end{achievements}%
}
\newcommand\publicationskip{%
  \sysu@error{The "\protect\publicationskip" is obsolete. Do not use it}%
}
\newcommand{\record}[1]{%
  \let\sysu@record@file\@empty
  \kv@define@key{sysu@record}{file}{\let\sysu@record@file\kv@value}%
  \kv@set@family@handler{sysu@record}{%
    \ifx\kv@value\relax
      \let\sysu@record@file\kv@key
    \else
      \kv@handled@false
    \fi
  }%
  \kvsetkeys{sysu@record}{#1}%
  \ifx\sysu@record@file\@empty
    \sysu@error{File path of \protect\record\space is required}
  \fi
  \cleardoublepage
  \sysu@pdfbookmark{0}{综合论文训练记录表}%
  \includepdf[pages=-]{\sysu@record@file}%
}
\AtEndOfPackageFile*{hyperref}{
  \hypersetup{
    linktoc            = all,
    bookmarksdepth     = 2,
    bookmarksnumbered  = true,
    bookmarksopen      = true,
    bookmarksopenlevel = 1,
    bookmarksdepth     = 3,
    unicode            = true,
    psdextra           = true,
    breaklinks         = true,
    plainpages         = false,
    pdfdisplaydoctitle = true,
    hidelinks,
  }%
  \newcounter{sysu@bookmark}
  \renewcommand\sysu@pdfbookmark[2]{%
    \phantomsection
    \stepcounter{sysu@bookmark}%
    \pdfbookmark[#1]{#2}{sysuchapter.\thesysu@bookmark}%
  }
  \renewcommand\sysu@phantomsection{%
    \phantomsection
  }
  \pdfstringdefDisableCommands{
    \let\\\relax
    \let\quad\relax
    \let\hspace\@gobble
  }%
  \@ifpackagelater{hyperref}{2019/04/27}{}{%
    \g@addto@macro\psdmapshortnames{\let\mu\textmu}
  }%
  \ifsysu@main@language@chinese
    \hypersetup{
      pdflang = zh-CN,
    }%
  \else
    \hypersetup{
      pdflang = en-US,
    }%
  \fi
  \AtBeginDocument{%
    \ifsysu@main@language@chinese
      \hypersetup{
        pdftitle    = \sysu@title,
        pdfauthor   = \sysu@author,
        pdfsubject  = \sysu@degree@name,
        pdfkeywords = \sysu@keywords,
      }%
    \else
      \hypersetup{
        pdftitle    = \sysu@title@en,
        pdfauthor   = \sysu@author@en,
        pdfsubject  = \sysu@degree@name@en,
        pdfkeywords = \sysu@keywords@en,
      }%
    \fi
    \hypersetup{
      pdfcreator={\sysuthesis-v\version}}
  }%
}
\AtEndOfPackageFile*{nomencl}{
  \let\nomname\sysu@denotation@name
  \def\thenomenclature{\begin{denotation}[\nom@tempdim]}
  \def\endthenomenclature{\end{denotation}}
}
\AtEndOfPackageFile*{longtable}{
  \pretocmd\LT@array{%
    \fontsize{11bp}{14.3bp}\selectfont
    \renewcommand\arraystretch{1.4}%
  }{}{\sysu@patch@error{\LT@array}}
}
\AtEndOfPackageFile*{siunitx}{%
  \sisetup{
    group-minimum-digits = 4,
    separate-uncertainty = true,
    inter-unit-product   = \ensuremath{{}\cdot{}},
  }
  \newcommand\sysu@set@siunitx@language{%
    \ifsysu@language@chinese
      \sisetup{
        list-final-separator = { 和 },
        list-pair-separator  = { 和 },
        range-phrase         = {～},
      }%
    \else
      \ifsysu@language@english
        \sisetup{
          list-final-separator = { and },
          list-pair-separator  = { and },
          range-phrase         = { to },
        }%
      \fi
    \fi
  }
  \sysu@set@siunitx@language
  \sysu@option@hook{language}{\sysu@set@siunitx@language}
}
\AtEndOfPackageFile*{amsthm}{%
  \newtheoremstyle{sysu}
    {\z@}{\z@}
    {\normalfont}{\z@}
    {\normalfont\sffamily}{\sysu@theorem@separator}
    {0.5em}{}
  \theoremstyle{sysu}
  \newtheorem{assumption}{\sysu@assumption@name}[chapter]%
  \newtheorem{definition}{\sysu@definition@name}[chapter]%
  \newtheorem{proposition}{\sysu@proposition@name}[chapter]%
  \newtheorem{lemma}{\sysu@lemma@name}[chapter]%
  \newtheorem{theorem}{\sysu@theorem@name}[chapter]%
  \newtheorem{axiom}{\sysu@axiom@name}[chapter]%
  \newtheorem{corollary}{\sysu@corollary@name}[chapter]%
  \newtheorem{exercise}{\sysu@exercise@name}[chapter]%
  \newtheorem{example}{\sysu@example@name}[chapter]%
  \newtheorem{remark}{\sysu@remark@name}[chapter]%
  \newtheorem{problem}{\sysu@problem@name}[chapter]%
  \newtheorem{conjecture}{\sysu@conjecture@name}[chapter]%
  \renewenvironment{proof}[1][\sysu@proof@name]{\par
    \pushQED{\qed}%
    % \normalfont \topsep6\p@\@plus6\p@\relax
    \normalfont \topsep\z@\relax
    \trivlist
    \item[\hskip\labelsep
      %     \itshape
      % #1\@addpunct{.}]\ignorespaces
      \sffamily
      #1\@addpunct{\sysu@theorem@separator}]\ignorespaces
  }{%
    \popQED\endtrivlist\@endpefalse
  }
  \renewcommand\qedsymbol{\ensuremath{\QED}}
}
\AtEndOfPackageFile*{ntheorem}{%
  \theorembodyfont{\normalfont}%
  \theoremheaderfont{\normalfont\sffamily}%
  \theoremsymbol{\ensuremath{\QED}}%
  \newtheorem*{proof}{\sysu@proof@name}%
  \theoremstyle{plain}%
  \theoremsymbol{}%
  \theoremseparator{\sysu@theorem@separator}%
  \newtheorem{assumption}{\sysu@assumption@name}[chapter]%
  \newtheorem{definition}{\sysu@definition@name}[chapter]%
  \newtheorem{proposition}{\sysu@proposition@name}[chapter]%
  \newtheorem{lemma}{\sysu@lemma@name}[chapter]%
  \newtheorem{theorem}{\sysu@theorem@name}[chapter]%
  \newtheorem{axiom}{\sysu@axiom@name}[chapter]%
  \newtheorem{corollary}{\sysu@corollary@name}[chapter]%
  \newtheorem{exercise}{\sysu@exercise@name}[chapter]%
  \newtheorem{example}{\sysu@example@name}[chapter]%
  \newtheorem{remark}{\sysu@remark@name}[chapter]%
  \newtheorem{problem}{\sysu@problem@name}[chapter]%
  \newtheorem{conjecture}{\sysu@conjecture@name}[chapter]%
}
\PassOptionsToPackage{chapter}{algorithm}
\AtEndOfPackageFile*{algorithm}{
  \floatname{algorithm}{\sysu@algorithm@name}
  \g@addto@macro\appendix{\renewcommand*{\thealgorithm}{\thechapter-\arabic{algorithm}}}
  \renewcommand\listofalgorithms{%
    \sysu@listof{algorithm}%
  }
  \renewcommand\listalgorithmname{\sysu@list@algorithm@name}
  \def\ext@algorithm{loa}
  \contentsuse{algorithm}{loa}
  \titlecontents{algorithm}
    [\z@]{}
    {\contentspush{\fname@algorithm~\thecontentslabel\quad}}{}
    {\sysu@leaders\thecontentspage}
}
\PassOptionsToPackage{algochapter}{algorithm2e}
\AtEndOfPackageFile*{algorithm2e}{
  \renewcommand\algorithmcfname{\sysu@algorithm@name}
  \SetAlgoCaptionLayout{sysu@caption@font}
  \SetAlCapSty{relax}
  \SetAlgoCaptionSeparator{\hspace*{1em}}
  \SetAlFnt{\fontsize{11bp}{14.3bp}\selectfont}
  \renewcommand\listofalgorithms{%
    \sysu@listof{algorithmcf}%
  }
  \renewcommand\listalgorithmcfname{\sysu@list@algorithm@name}
  \def\ext@algorithmcf{loa}
  \contentsuse{algocf}{loa}
  \titlecontents{algocf}
    [\z@]{}
    {\contentspush{\algorithmcfname~\thecontentslabel\quad}}{}
    {\sysu@leaders\thecontentspage}
}
\AtEndOfPackageFile*{minted}{
  \g@addto@macro\appendix{\renewcommand*{\thelisting}{\thechapter-\arabic{listing}}}%
  \newcommand\sysu@set@listing@language{%
    \ifsysu@language@chinese
      \floatname{listing}{代码}%
    \else
      \floatname{listing}{Listing}%
    \fi
  }
  \sysu@set@listing@language
  \sysu@option@hook{language}{\sysu@set@listing@language}
}
\sysu@define@key{
  spine-font = {
    name = spine@font,
    default = {\sanhao},
  },
  spine-title = {
    name = spine@title,
  },
  spine-author = {
    name = spine@author,
  },
}
\newcommand*\CJKmovesymbol[1]{\raise.3em\hbox{#1}}
\newcommand*\CJKmove{%
  \punctstyle{plain}%
  \let\CJKsymbol\CJKmovesymbol
  \let\CJKpunctsymbol\CJKsymbol
}
\NewDocumentCommand{\spine}{
    O{
      \ifx\sysu@spine@title\@empty
        \sysu@title
      \else
        \sysu@spine@title
      \fi
    }
    O{
      \ifx\sysu@spine@author\@empty
        \sysu@author
      \else
        \sysu@spine@author
      \fi
    }}{%
  \clearpage
  \ifsysu@degree@bachelor
    \newgeometry{
      vmargin = 3cm,
      hmargin = 1cm,
    }%
  \else
    \newgeometry{
      vmargin = 5.5cm,
      hmargin = 1cm,
    }%
  \fi
  \thispagestyle{empty}%
  \ifsysu@main@language@chinese
    \sysu@pdfbookmark{0}{书脊}%
  \else
    \sysu@pdfbookmark{0}{Spine}%
  \fi
  \begingroup
    \noindent\hfill
    \rotatebox[origin=lt]{-90}{%
      \makebox[\textheight]{%
        \fangsong
        \addCJKfontfeatures*{RawFeature={vertical}}%
        \sysu@spine@font
        \CJKmove
        #1\hfill
        \sysu@stretch{4.5em}{#2}%
      }%
    }%
  \endgroup
  \clearpage
  \restoregeometry
}
\newcommand\sysu@input@spine{%
  \IfFileExists{spine.pdf}{}{%
    \immediate\write18{xelatex spine.tex}%
    \IfFileExists{spine.pdf}{}{%
      \sysu@error{Cannot find file "spine.pdf". Compile "spine.tex" first, or enable shell escape}%
    }%
  }%
  \includepdf[pages=1]{spine.pdf}%
}
\newcommand\sysu@spine{%
  \ifsysu@cjk@font@fandol
    \sysu@input@spine
  \else
    \ifsysu@cjk@font@noto
      \sysu@input@spine
    \else
      \spine
    \fi
  \fi
}
\DeclareRobustCommand\cs[1]{\texttt{\char`\\#1}}
\DeclareRobustCommand\file{\nolinkurl}
\DeclareRobustCommand\env{\textsf}
\DeclareRobustCommand\pkg{\textsf}
\DeclareRobustCommand\cls{\textsf}
\sloppy
\endinput
%%
%% End of file `sysuthesis.cls'.
