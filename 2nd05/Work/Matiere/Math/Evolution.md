---
title: "Cours de maths"
author: [Scott Hamilton]
date: "08-09-2019"
subject: "Valeur absolue"
keywords: [Math, Absolute]
lang: "fr"
table-use-row-colors: false
...

# Chap 1 : Evolutions  

 > par scott hamilton

**1°) Rappel sur les poucentages**  

\		Calculer un pourcentage :  
\		. prendre $a\%$ d'un nombre $x$, c'est calculer $\frac{a}{100}\cdot x$  
\		. pour calculer quelle proportion représente le nombre $x$ par rapport au nombre $y$, on calcule $\frac{x}{y}$ et pour l'avoir en pourcentage : $\frac{x}{y}\cdot 100$  
  
\		C'est une fréquence.  
  
\		. pour prendre $a\%$ de $b\%$ de $x$, on calcule $\frac{a}{100}\cdot\frac{b}{100}\cdot x$  
  
\		. pour calculer le taux d'évolution quand une gradeure passe de $x$ à $y$, on calcule $\frac{y-x}{x}\cdot 100$ (pour avoir un pourcentage)  
  

**2) Rapport entre taux d'évolution et le coefficient multiplicateur**  
  
\	*Propriété :* si une grandeure subit une évolution avec un taux de $t\%$  

 > (hausse si t>100, baisse si t <0)  
  
alors, cela revient à la multiplier par $1+\frac{t}{100}$  
  
ex : $\overbrace{\text{une basse de }30\%}^{t=-30\%}$ équivaut à une multiplication par $1-\frac{30}{100} = 0.7$  
  
\	une hausse de $100\%$ équivaut à une multiplication par $2$ :  
\	$x\cdot (1+\frac{100}{100})$ $\Leftrightarrow$ $x\cdot 2$  
  

Preuve : si $x$ évolue de $t\%$, alors la nouvelle valeur est : $x+x\cdot\frac{t}{100} = x\cdot 1+x\cdot\frac{t}{100}$  
\		$x(1+\frac{t}{100})$  
  

**3) Taux réciproque et évolutions successives**  
  
\	Taux réciproque : une grandeure $x$ évolue d'un taux de $t\%$, alors $x$ est multiplié par $1+\frac{t}{100}$  
  
\		Pour retrouver la valeur de départ, il faut divisr par $1+\frac{t}{100}$  
le coefficient multiplicateur réciproque est $\frac{1}{1+\frac{t}{100}}$  
  
Mais, si $t'$ est le taux réciproque, le coefficient est $1+\frac{t'}{100}$.  
  
Donc $1+\frac{t'}{100} = \frac{1}{1+\frac{t}{100}}$  
  
ex : On paye $20\%$ de TVA, et le prix avec TVA est $100$€.  
\	On cherche alors le prix de départ et le taux réciproque  
\	$\frac{1}{1.20}\Rightarrow ~0.833$ qui fait un taux réciproque d'environ $-16.6\%$  
  
\	Evolutions successives : Si une grandeure subit plusieurs évolutions successives avec des coefficients $C1, C2 ...$  
L'évolution globale présente un coefficient égal au produit de $C1, C2 ...$  
  
Exemple, un produit subit trois hausses de $20\%$ chacune :  
  
\	$taux global = 1.2^3 = 1.728$  
\	Le taux global (en $\%$) associé à plusieurs évolutions de $t1\%, $t2\%, $t3\%v ...$ vérifie :  
  
  $1+\frac{taux global}{100} = (1+\frac{t1}{100})(1+\frac{t2}{100})(1+\frac{t3}{100})$  

\	$taux global = 72.8\%$  
  
\	Application : calcul d'un taux moyen.  
  
\	Une grandeure évolue, la première année avec une baisse de $20\%$ et, la 2ème avec une hausse de $150\%$  
\	On veut savoir, en moyenne, de combien est l'évolution chaque année.  
  
\	Cela fait un taux moyen de $100\%$

\begin{Large}
\color{green}
\quad\quad$C = \sqrt{C1\cdot C2}$
\end{Large}  
  
\		donc $(1+\frac{t}{100})^2 = 0.8\cdot 2.5$  
\				$(1+\frac{t}{100})^2 = 2$  
\				$1+\frac{t}{100} = \sqrt{2}$  
\				$1+\frac{t}{100} = \sqrt{2}$  
\				$\frac{t}{100} = \sqrt{2}-1$  
\				$t \approx 41.4\%$  




