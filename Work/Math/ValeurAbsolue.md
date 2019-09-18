---
title: "Cours de maths"
author: [Scott Hamilton]
date: "08-09-2019"
subject: "Valeur absolue"
keywords: [Math, Absolute]
lang: "fr"
table-use-row-colors: false
...

# Chap 1 : Ensembles de nombres

 > par scott hamilton

\newcommand{\abs}[2][]{
    $#1\left|#2\right|$
}

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


## Valeur absolue :

**Définition** : $x\in \mathbb R$, la valeur absolue de x, 


qui se note \abs{x} est le nombre positif ou nul tel que : 

\abs{x}
\begin{small}
$=\left\{\begin{array}{lr}
x\text{ si }x\geqslant 0 \\
\text{ou }-x\text{ si }x\leqslant 0
\end{array}\right\}$
\end{small}  
$\\
\\$
Remarques : \abs{x} $=0 \Leftrightarrow x=0$  

\abs{x} c'est aussi la distance à zéros de $x$  
$\\
\\$
**Propriété** : \abs{x}$=a\Rightarrow$ si $a<0$ il n'y a pas de solution,  

$\quad\quad\quad\quad\quad\quad\mathbb S = \emptyset$  

$\quad\quad\quad\quad\Rightarrow$ si $a\geqslant0$ soit $x=a$  

$\quad\quad\quad\quad\quad\quad\quad\quad$      soit $x=-a$  
$\\$
ex :  

\abs{x-3} $=4\quad\Leftrightarrow$
$\begin{cases}
x-3=4\\
x-3=-4
\end{cases}$
\Large$\Leftrightarrow\left\{\begin{array}{lr}
x=4+3=7 \\
x=-4+3=1
\end{array}\right\}$

\large


## Valeur absolue et distance :
$\\$
$\quad\quad a\in\mathbb R$, $b\in \mathbb R\\\\$
si $a\leqslant b$, la distance entre $a$ et $b$ est $b-a\\$
si $a\geqslant b$, la distance entre $a$ et $b$ est $a-b\\$
si $a\leqslant b$, $d(a,b)=b-a\\$
si $a\geqslant b$, $d(a,b)=a-b\\\\$

Dans tous les cas 

\begin{tcolorbox}
$d(a,b) = $\abs{b-a}$\\$
\quad\quad\quad (ou $a-b$) 
\end{tcolorbox}  

\abs{x-3}$=4 \Leftrightarrow d(x, 3)=4\\\\$
$x-1$ ou $x=7\\\\$


## Valeur absolue et intervalle :  

\abs{x}$\leqslant R\quad$ ($R\geqslant 0$)
$\\$  

\intervgraph{-R}{R}{[}{]}

\quad\quad\quad\quad\quad $R$ est le rayon de l'intervalle
$\\\\$
\abs{x-b}$\leqslant R\\$
$\Leftrightarrow\\$
$d(x,b)\leqslant R\\$
$\Leftrightarrow x\in$\interval{[}{b-R}{b+R}{]}


