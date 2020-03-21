---
title: "Cours de maths"
author: [Scott Hamilton]
date: "08-09-2019"
subject: "Démonstration racine de 2 n'est pas rationnel"
keywords: [Math, Demonstration]
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


## Démonstration : 

### prouver que racine de 2 n'est pas rationnel  

$\\$  

On veut montrer que $\sqrt{2} \notin \mathbb Q$, on raisonne par l'absurde.
  
$\Rightarrow$ Comment s'écrit $\sqrt{2}$ ?  
$\sqrt{2} = \frac{a}{b}$, $a\in\mathbb N$, $b\in \mathbb N^*$
\begin{addmargin}[5em]{2em}% 1em left, 2em right
et 
$
\begin{cases}
PGCD(a,b) = 1\\
a \text{ et } b \text{ sont premiers entre eux}\\
\frac{a}{b}\text{ est irréductible}
\end{cases}
$
\end{addmargin}  

$\Rightarrow$ Montrer que $a^2$ est pair  
$\sqrt{2}=\frac{a}{b}$ alors $a=\sqrt{2}\cdot b$
\begin{addmargin}[5em]{2em}% 1em left, 2em right
et 
$
a^2=2\cdot\underbrace{b^2}_{\in\mathbb N}
$
\end{addmargin}
$\\$
donc $a^2$ est pair  

$\Rightarrow$ Montrer que $a$ est pair  
Supposons que $a$ est, impair  
$a=2k+1$, $K\in\mathbb N\\$
$a^2=4k^2+4k+1\\$
$a^2=\underbrace{2(2k^2+2k)}_\text{pair}+1\\\\$
Or $a^2$ ne peut être impair.  
Donc $a$ n'est pas impair, $a$ est pair.  
\pagebreak  

$\Rightarrow$ Montrer que $b$ est pair 

$a=2k$, $k\in\mathbb N\\$
$a^2=(2k)^2=4k^2\\$
$2b^2=4k^2\\$
$b^2=2\underbrace{k^2}_{\in\mathbb Z}\\$
$b^2$ est pair
$b$ est pair  

$\Rightarrow$ Conclure : donc $\frac{a}{b}$ n'est pas irréductible  
($a$ et $b$ ont $2$ comme diviseur commun)
donc $\sqrt{2}\notin\mathbb Q$