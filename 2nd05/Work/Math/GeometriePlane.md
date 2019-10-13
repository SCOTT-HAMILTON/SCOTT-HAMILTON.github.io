---
title: "Cours de maths"
author: [Scott Hamilton]
date: "29-09-2019"
subject: "Démonstration"
keywords: [Math, Démonstration]
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
\node [dot=H] at ($(A)!(M)!(B)$) {};

\draw [extended line=0.5cm] (A) -- (B);
\draw [extended line] (H) -- (M);

\draw [red,dashed, thick] (A) -- (M);


\fill [red] (H) circle [radius=2pt];
\draw [thick, red,right angle symbol={H}{B}{M}];

\end{tikzpicture}  


On prend $A\in (d)$, $A\neq H\\$
$MAH$ est rectangle en $H$ donc son hypoténuse est $MA$ donc $MA$ est le coté le plus long (voir théorème de Pythagore) donc $MA>MH\\$
$MH$ est bien la plus courte distance entre $M$ et un point de la droite.
$\\\\$
**2) Coordonnées : **

\   On définit un repère du plan par la donnée de 3 points non-alignés. L'origine d'abscisse et d'ordonnée 0, le point d'abscisse 1 et le point d'ordonnée 1.

\begin{tikzpicture}[dot/.style={circle,inner sep=1pt,fill,label={#1},name=#1},
  extended line/.style={shorten >=-#1,shorten <=-#1},
  extended line/.default=1cm]

\node [dot=O] at (0,0) {};
\node [dot=J] at (1.5,1) {};
\node [dot=I,label={[label distance=-0.7cm]1}] at (2.5,0) {};

\node[shape=coordinate][dot=-1](A1)at($(O)-(I)$){};
\node[shape=coordinate][dot=-1](A2)at ($(O)-(J)$) {};

\node[shape=coordinate][dot=2](A3)at($(O)+2*(I)$){};
\node[shape=coordinate][dot=-1](A4)at ($(O)-(J)$) {};


\draw [extended line] (A1) -- (A3);
\draw [extended line] (A2) -- (J);
\end{tikzpicture}  
$\\$
\ si $(OI)\perp(OJ)$, le repère est orthogonal  
\ si $OI=OJ$, le repère est normé  
\ si $(OI)\perp(OJ)$ et $OI=OJ$, le repère est orthonormé.    
Dans ce cas, on donne $OI=OJ=1$
  
\pagebreak  
  
Dans un repère$(O,I,J)$, $M$ est un point du plan. On projette  
$M$ sur les deux axes : $(OI)$ et $(OJ)$ parallèlement aux directions des 2 axes.
$\\$

\begin{tikzpicture}[dot/.style={circle,inner sep=1pt,fill,label={#1},name=#1},
  extended line/.style={shorten >=-#1,shorten <=-#1},
  extended line/.default=1cm]

\node [dot=O] at (0,0) {};
\node [dot=I] at (3,0) {};
\node [dot=N] at (6,0) {};
\node [dot=P] at (2,4) {};
\node [dot=M] at (8,4) {};
\node [dot=J] at (3,6) {};

\draw (O) -- (J);
\draw [extended line] (O) -- (N);
\draw [dashed] (P) -- (M);
\draw [dashed] (N) -- (M);

\end{tikzpicture}  

\quad $ON=x\cdot OI\quad x>0\\$  

\quad $OP=y\cdot OJ\quad y>0\\$  
  
Si $N$ est à droite de $O$  

\quad $N\in [OI)$, $x_M=x$  

\quad sinon\quad\quad$x_M=-x\\$
  
Si $P\in [OJ)$

\quad\quad\quad $y_M=y$  

\quad sinon $y_M=-y\\$  

Les coordonnées de $M$ sont $( \underbrace{x_M}_\text{abscisse de M} ; \underbrace{y_M}_\text{ordonnée de M})\\$
  
### Distance entre deux points
  
  
Si $(O,I,J)$ est orthonormé :   
  
$\left.
\begin{array}{c l}  
   A(x_A ; y_A)\\
   B(x_B ; y_B)
\end{array}\right\}$
deux points du plan  

\begin{center}
\begin{tikzpicture}[dot/.style={circle,inner sep=1pt,fill,label={#1},name=#1},
  extended line/.style={shorten >=-#1,shorten <=-#1},
  extended line/.default=1cm]

\draw (0,-5) -- (0,5);
\draw (-5,0) -- (5,0);
\draw[fill=red] (0,0) circle(0.7mm);

\node[shape=coordinate][dot=A][label={[shift={(1.2,0.3)}]$x_B-x_A$}](A1)at (1,1) {};
\node[shape=coordinate][dot=A][label={[shift={(0.7,1)}]$y_B-y_A$}](A2)at (4,-3) {};
\node[shape=coordinate][dot=A][label={[shift={(-1,-1)}]$y_A-y_B$}](A3)at (-1,-1) {};
\node[shape=coordinate][dot=A][label={[shift={(1.2,0.2)}]$x_B-x_A$}](A4)at (-4,3) {};

\node[shape=coordinate][dot=B][label={[shift={(1,-1.5)}]$y_B-y_A$}](B1)at (4,3) {};
\node[shape=coordinate][dot=B][label={[shift={(1.5, 0.1)}]$x_A-x_B$}](B2)at (1,-1) {};
\node[shape=coordinate][dot=B][label={[shift={(1.5, -0.7)}]$x_A-x_B$}](B3)at (-4,-3) {};
\node[shape=coordinate][dot=B][label={[shift={(-1, 1)}]$y_A-y_B$}](B4)at (-1,1) {};

\draw [dashed] (A1) -- (4,1);
\draw [dashed] (B1) -- (4,1);

\draw [dashed] (A2) -- (4,-1);
\draw [dashed] (B2) -- (4,-1);

\draw [dashed] (A3) -- (-1,-3);
\draw [dashed] (B3) -- (-1,-3);

\draw [dashed] (A4) -- (-1,3);
\draw [dashed] (B4) -- (-1,3);

\end{tikzpicture}
\end{center}  
$\\\\$
\begin{tikzpicture}[dot/.style={circle,inner sep=1pt,fill,label={#1},name=#1},
  extended line/.style={shorten >=-#1,shorten <=-#1},
  extended line/.default=1cm]

\node [dot=A] at (0,0) {};
\node [dot=B] at (3,2) {};
\node [dot=H] at (3,0) {};

\node[shape=coordinate,dashed][dot=$x_A$][label={[shift={(1.5,1.3)}]$AH=|x_B-x_A$|}](xa)at(0,-3){};
\node[shape=coordinate,dashed][dot=$x_B$](xb)at(3,-3){};
\node[shape=coordinate,dashed][dot=$y_A$](ya)at(6,0){};
\node[shape=coordinate,dashed][dot=$y_B$](yb)[label={[shift={(1.5,-1.3)}]$BH=|y_B-y_A$|}]at(6,2){};

\draw (A) -- (H);
\draw (B) -- (H);
\draw (A) -- (B);

\draw [dashed](A) -- (xa);
\draw [dashed](H) -- (xb);
\draw [dashed](H) -- (ya);
\draw [dashed](B) -- (yb);

\draw [thick, red,right angle symbol={H}{B}{A}];

\end{tikzpicture}  

\pagebreak

\ Dans ABH, rectangle en H, d'après le théorème de Pythagore :  

\quad\quad $AB^2=AH^2+BH^2$  

\quad\quad $AB^2=|x_B-x_A|^2+|y_B-y_A|^2$  

\quad\quad\quad\quad$=(x_B-x_A)^2+(y_B-y_A)^2$  

\ car les carrés sont positifs  
$\color{red}AB=\sqrt{(x_B-x_A)^2+(y_B-y_A)^2}\color{black}\\$

### Milieu d'un segment :  
  
$\left.
\begin{array}{c l}  
   A(x_A ; y_A)\\
   B(x_B ; y_B)
\end{array}\right\}$
deux points  
  
$I$ est le milieu de $[A;B]$  
\begin{Large}
\quad $I(\frac{x_A+x_B}{2};\frac{y_A+y_B}{2})$  
\end{Large}
**Preuve**  
  
\begin{tikzpicture}[dot/.style={circle,inner sep=1pt,fill,label={#1},name=#1},
  extended line/.style={shorten >=-#1,shorten <=-#1},
  extended line/.default=1cm]

\node [dot=O] at (0,0) {};
\node [dot=C] at (1,0) {};
\node [dot=E] at (2,0) {};
\node [dot=D] at (3,0) {};
\node [dot=A] at (3,2) {};
\node [dot=I] at (5,3) {};
\node [dot=B] at (7,4) {};
\node [dot=F] at (4,2) {};
\node [dot=G] at (5,2) {};

\node[shape=coordinate,dashed][dot=$x_A$](xa)at(1,-2){};
\node[shape=coordinate,dashed][dot=$x_I$](xi)at(2,-2){};
\node[shape=coordinate,dashed][dot=$x_B$](xb)at(3,-2){};

\draw [dashed] (C) -- (xa);
\draw [dashed] (E) -- (xi);
\draw [dashed] (D) -- (xb);

\draw [extended line,thick] (O) -- (4,4);
\draw [extended line,thick] (O) -- (7,0);

\draw [extended line,dashed] (C) -- (5,4);
\draw [extended line,dashed] (E) -- (6,4);
\draw [extended line,dashed] (D) -- (7,4);

\draw [thick](A) -- (B);
\draw [red,thick] (A) -- (G);
\end{tikzpicture}  
  
\quad $C,E,D$ sont les projetés de $A,I,B$ sur l'axe des abscisses, en suivant  
la direction de l'axe des ordonnées. $\color{red}(AG)\parallel(CD)\color{black}$  
  
$A,I,B$ sont alignés  
$A,F,G$ sont alignés  

\quad $(IF)\parallel(BG)$  
alors, d'après le théorème de Thalès  

\quad\quad$\frac{AF}{AG}=\frac{AI}{AB}=\frac{FI}{GB}$  

\ comme $I$ est le milieu de $[AB]$ :  
$\frac{AI}{AB}=\frac{1}{2}$; donc $\frac{AF}{AG}=\frac{1}{2}$, comme $A,F\text{ et }G$ sont alignés,  

\quad\quad$F$ est le milieu de $[AG]$  

Par construction  : $(AC)\parallel(FE)\parallel(GD)$  

\quad\quad\quad et $(AG)\parallel(CD)$  
  
Donc les côtés opposés de $AFEC$ et de $FGDE$  
sont 2 à 2 parallèles, se sont des parallélogrammes.  

\quad donc leurs côtés opposés sont de même longueur, donc :  

\quad\quad$CE=EP$  
comme $C,E,D$ sont alignés,  

\quad$E$ est le milieu de $[CD]$  
  
\quad$x_E=x_I$  

\quad$x_E=OE$  

\quad\quad$=OC+CE$  

\quad\quad$=OC+\frac{CD}{2}$  

\begin{Large}
\quad\quad$=x_C+\frac{x_D-x_C}{2}$  

\quad\quad$=x_A+\frac{x_B-x_A}{2}$  

\quad\quad$=\frac{2x_A+x_B-xA}{2}$  

\quad\quad$=\frac{x_A+x_B}{2}$
\end{Large}
