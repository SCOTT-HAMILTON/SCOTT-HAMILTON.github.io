---
title: "Cours de maths"
author: [Scott Hamilton]
date: "08-09-2019"
subject: "Ensembles"
keywords: [Math, Ensembles]
lang: "fr"
table-use-row-colors: false
...

# Chap 1 : Ensembles de nombres

 > par scott hamilton

## Intervalle de R

$a\in\mathbb R$, $b\in\mathbb R$, $a < b$

\smallbreak
L'ensemble des nombres $x$ tel que : 
\smallbreak
\newcommand{\intervgraph}[4]{
\begin{tikzpicture}[baseline=1ex]
    \draw[->] (1,0) --(11,0);
    \node[] at (8,0) {\color{red}$\Big#4$};
    \node[] at (5,0) {\color{red}$\Big#3$};
    \node[below=8pt] at (8,0) {#2};
    \node[below=8pt] at (1,0) {$-\infty$};
    \node[below=8pt] at (11,0) {$+\infty$};
    \node[below=8pt] at (5,0) {#1};
    \foreach \xp in {1,1.2,...,4.8}{\node[] at (\xp,0) {/};}
    \foreach \xp in {8.2,8.4,...,10.8}{\node[] at (\xp,0) {/};}
\end{tikzpicture}
}

\newcommand{\interval}[5][]{
	$#1\left#2#3;#4\right#5$
}

\newcommand{\intervex}[4]{
	\intervgraph{#2}{#3}{#1}{#4}

	\interval{x\in}{#1}{#2}{#3}{#4}
}

\newcommand{\mintervex}[2]{
	\intervgraph{$-\infty$}{#1}{]}{#2}

	\interval{x\in}{]}{-\infty}{#1}{#2}
}

\newcommand{\pintervex}[2]{
	\intervgraph{#2}{$\infty$}{#1}{[}

	\interval{x\in}{#1}{#2}{\infty}{[}
}


$a\leqslant x \leqslant b$

\intervex{[}{a}{b}{]}

$a < x \leqslant b$

\intervex{]}{a}{b}{]}

$a\leqslant x < b$

\intervex{[}{a}{b}{[}

$a < x < b$

\intervex{]}{a}{b}{[}

\pagebreak

$x > a$

\pintervex{]}{a}

$x\geqslant a$

\pintervex{[}{a}

$x < a$

\mintervex{a}{[}

$x\leqslant a$

\mintervex{a}{]}

\bigbreak

\interval{[}{a}{b}{]} est une intervalle fermée

\interval{]}{a}{b}{[} est une intervalle ouverte
