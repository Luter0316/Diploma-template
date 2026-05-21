% !TeX encoding = windows-1251
%% 
%% This is file presentation.cls
%% It is based on beamer.cls
%% 
%% Developed by: Aleksandr Maksimenko, maximenko.a.n@gmail.com
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{presentation}[2017/01/20 Provides the format for diploms]
% ��������� beaner.cls �� ����� �������, ����������� � diplom
\LoadClassWithOptions{beamer} 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ���������� �������� ������
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\input{glyphtounicode.tex} % ���������� ��������� �������� � PDF
\pdfgentounicode=1
%\RequirePackage{cmap} % ���������� ��������� �������� � PDF (�����.)
\RequirePackage[T2A]{fontenc} % ���������� ��������� TeX-�
\RequirePackage[cp1251]{inputenc} % ��������� �����

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ����������� ����� �����������
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% �������� �������� ����
\usecolortheme{whale}
%\usecolortheme{dolphin} 
%\usetheme{warsaw}
%\usetheme{Madrid}
%\usepackage{BeamerColor}
%\usecolortheme[named=SteelBlue4]{structure}

\useinnertheme{rounded} % ��������� ���� ������
\useoutertheme{infolines} % ��������� �����������
\setbeamertemplate{headline}{} % ������� ������� ����������
\setbeamertemplate{navigation symbols}{} % ������� ������������� �������
\usefonttheme[stillsansseriftext, stillsansserifsmall]{serif} % ����� � ��������� � �������� � ����������
\usefonttheme[onlysmall]{structurebold} % ������ ����� � ������������
%\setbeamerfont*{frametitle}{size=\normalsize,series=\bfseries}
\setbeamercovered{transparent} % uncover ����� �������� �������� ����� ������ �����
%\setbeamercovered{invisible} % � ��� -- ���������
% ���������� ���� ����������� ���������
\definecolor{unicover}{rgb}{0.10,0.35,0.62} 
\setbeamercolor{structure}{fg=unicover}
% ��������� ������� ������������
\pgfdeclareimage[height=1.5cm]{university-logo}{LogoYarSU.png}
\logo{\pgfuseimage{university-logo}}

% ����� ������ ���������� �� ��� �����: �����, ��������, ����� �������
\newcommand{\makefootline}[3]{
	\setbeamertemplate{footline}{
		\leavevmode%
		\hbox{%
			\begin{beamercolorbox}[wd=#1\paperwidth,ht=2.25ex,dp=1ex,center]{author in head/foot}
				\usebeamerfont{author in head/foot}%
				\insertshortauthor
			\end{beamercolorbox}%
			\begin{beamercolorbox}[wd=#2\paperwidth,ht=2.25ex,dp=1ex,center]{title in head/foot}%
				\usebeamerfont{title in head/foot}\insertshorttitle
			\end{beamercolorbox}%
			\begin{beamercolorbox}[wd=#3\paperwidth,ht=2.25ex,dp=1ex,right]{date in head/foot}%
				\insertframenumber{} / \inserttotalframenumber\hspace*{2ex}
			\end{beamercolorbox}
		}%
	}
}

% ������ ����� �����������, ����� ��� �� ��������� �������
\setbeamertemplate{blocks}[default]
\setbeamercolor{block title}{bg=}
\setbeamercolor{block body}{bg=}

% ��� �������� ���������� �������� ������ ���� Example, Theorem, ...
\languagepath{russian}
\renewcommand{\proofname}{��������������}

\endinput
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% End of file `presentation.cls'. 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
