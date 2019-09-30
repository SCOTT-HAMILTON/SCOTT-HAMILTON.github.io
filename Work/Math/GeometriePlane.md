---
title: "Cours de maths"
author: [Scott Hamilton]
date: "29-09-2019"
subject: "Ensembles"
keywords: [Math, Ensembles]
lang: "fr"
table-use-row-colors: false
...

\tikzset{
    right angle quadrant/.code={
        \pgfmathsetmacro\quadranta{{1,1,-1,-1}[#1-1]}     % Arrays for selecting quadrant
        \pgfmathsetmacro\quadrantb{{1,-1,-1,1}[#1-1]}},
    right angle quadrant=1, % Make sure it is set, even if not called explicitly
    right angle length/.code={\def\rightanglelength{#1}},   % Length of symbol
    right angle length=2ex, % Make sure it is set...
    right angle symbol/.style n args={3}{
        insert path={
            let \p0 = ($(#1)!(#3)!(#2)$) in     % Intersection
                let \p1 = ($(\p0)!\quadranta*\rightanglelength!(#3)$), % Point on base line
                \p2 = ($(\p0)!\quadrantb*\rightanglelength!(#2)$) in % Point on perpendicular line
                let \p3 = ($(\p1)+(\p2)-(\p0)$) in  % Corner point of symbol
            (\p1) -- (\p3) -- (\p2)
        }
    }
}

# Chap 2 : Géométrie plane : triangles et coordonnées

 > par scott hamilton


## 1) Projeté orthogonal : 

$M$ est un point du plan$\\$
$(d)$ est une droite du plan  

Si $M\notin (d)$, le projeté orthogonal de $M$ sur $(d)$ est l'intersection entre $(d)$ et la perpendiculaire à $(d)$ passant par $M$

\begin{tikzpicture}[dot/.style={circle,inner sep=1pt,fill,label={#1},name=#1},
  extended line/.style={shorten >=-#1,shorten <=-#1},
  extended line/.default=1cm]

\node [dot=A] at (0,0) {};
\node [dot=B,label={[label distance=0.5cm](d)}] at (4,2) {};
\node [dot=M] at (1,2.5) {};

\draw [extended line=0.5cm] (A) -- (B);
\draw [extended line] ($(A)!(M)!(B)$) -- (M);

\draw [red,dashed, thick] (A) -- (M);


\node [dot=H] at ($(A)!(M)!(B)$) {};
\fill [red] ($(A)!(M)!(B)$) circle [radius=2pt];
\draw [thick, red,right angle symbol={A}{B}{M}];

\end{tikzpicture}  


On prend $A\in (d)$, $A\neq H\\$
$MAH$ est rectangle en $H$ donc son hypoténuse est $MA$ donc $MA$ est le coté le plus long (voir théorème de Pythagore) donc $MA>MH\\$
$MH$ est bien la plus courte distance entre $M$ et un point de la droite.