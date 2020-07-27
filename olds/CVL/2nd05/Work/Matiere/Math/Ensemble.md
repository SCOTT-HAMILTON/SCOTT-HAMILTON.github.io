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

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

\begin{Large}
$\mathbb{N}$
: Ensemble des entiers naturels
\end{Large}

\begin{Large}
\quad \quad $\mathbb{N} = $
$\begin{Bmatrix}
0, 1, 2, 3, ...
\end{Bmatrix}$
\end{Large}

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

\begin{Large}
$\mathbb{Z}$
: Ensemble des entiers relatifs
\end{Large}

\begin{Large}
\quad \quad $\mathbb{Z} = $
$\begin{Bmatrix}
n, -n,\hspace{0.3cm}avec\hspace{0.3cm}n\in\mathbb{N}
\end{Bmatrix}$
\end{Large}

\begin{Large}
\quad \quad \quad$=$
$\begin{Bmatrix}
0, 1, \text{-}1, 2, \text{-}2, 3, \text{-}3, 4, \text{-}4
\end{Bmatrix}$
\end{Large}

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

\begin{Large}
$\mathbb{D}$
: Ensemble des décimaux
\end{Large}

\begin{Large}
\quad \quad $\mathbb{D} = $
$\begin{Bmatrix}
\frac{a}{10^n}
\end{Bmatrix}$
, $a\in\mathbb{Z}$, $n\in\mathbb{N}$
\end{Large}

\begin{Large}
$\mathbb{D}$ est l'ensemble des nombres qui peuvent s'écrire comme une fraction décimale.
\end{Large}

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

\begin{Large}
$\mathbb{Q}$
: Ensemble des rationnels
\end{Large}

\begin{Large}
\quad \quad $\mathbb{D} = $
$\begin{Bmatrix}
\frac{a}{b}, b\in\mathbb N^*, a\in\mathbb Z
\end{Bmatrix}$
$\mathbb N^* = \mathbb N - $
$\begin{Bmatrix}
0
\end{Bmatrix}$
\end{Large}

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

\begin{Large}
\quad \quad $\mathbb Q$ est l'ensemble des nombres qui s'écrivent en fraction.
\end{Large}

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

\begin{Large}
$\mathbb{R}$
: Ensemble des réels, c'est l'ensemble des abscisses de tous les points d'une droite graduée.
\smallbreak
$\mathbb{R}$ est l'ensemble des rationnels et des irrationnels.
\end{Large}

\pagebreak

## Relation d'inclusion

\begin{Large}
\quad \quad $\mathbb N \subset \mathbb Z \subset \mathbb D \subset \mathbb Q \subset \mathbb R$
\smallbreak
\quad \quad $\subset = $ est inclus dans 
\end{Large}

\hfill \break
\hfill \break
\hfill \break
\hfill \break

**Diviseur** : 

$a\in\mathbb N$, $b\in\mathbb N$

\begin{Large}
\quad \quad $a$ est un diviseur de $b$,
\end{Large}  
  
\begin{Large}
\quad \quad $a$ divise $b$,
\end{Large} 

\begin{Large}
\quad \quad $b$ est un multiple de $a$,
\end{Large}  

\begin{Large}
\quad \quad $\Leftrightarrow$ il existe $k\in\mathbb N$, 
\end{Large}  

\begin{Large}
\quad \quad \quad \quad $\Leftrightarrow$ = Si et seulement si
\end{Large}  
  
\begin{Large}
\quad \quad tel que $b = a \times k$
\end{Large}  

*Donc un nombre pair s'écrit :* 
\begin{Large}
\quad \quad $2k$, $k\in\mathbb N$
\end{Large} 

\smallbreak

0 n'est diviseur d'aucun nombre différent de zéros.
Tous les entiers divisent 0.

\smallbreak

1 est diviseur de tout les nombres.

\smallbreak

### Démonstration de cours

\begin{Huge}
\quad \quad \quad \quad \quad \quad $\frac{1}{3}\notin \mathbb D$
\end{Huge}  

\smallbreak

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;On raisonne par l'absurde
\smallbreak

\begin{Large}
Supposons que $\frac{1}{3}\in \mathbb D$
\end{Large}

\begin{Large}
donc  $\frac{1}{3} = \frac{a}{10^n}$\quad\quad$a\in\mathbb N$, $n\in\mathbb N$
\end{Large}

\smallbreak

\begin{Large}
$\Leftrightarrow 1 \times 10^n = 3a$
$\Leftrightarrow 10^n = 3a$
\end{Large}

\begin{Large}
donc 3 est diviseur de $10^n$
\end{Large}

\begin{Large}
$10^n = 1\underbrace{0....0}_\text{avec n zeros} $ La somme des chiffres de $10^n$ sera toujours 1.
\smallbreak
donc 3 ne divise pas $10^n$\quad donc $\frac{1}{3}\notin\mathbb D$ 
\end{Large}
