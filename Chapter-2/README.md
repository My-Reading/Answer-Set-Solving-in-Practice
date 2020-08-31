# Chapter 2 Introduction

## Logical Preliminaries and Terminology

A set $X \subseteq \mathop{A}$ of ground atoms is `model` of a propositional logic program $P$,
if $head(r) \in X$, whenever $body(r)^+ \subseteq X$ and $body(r)^- \cap X = \empty$ for
every $r \in P$.

In ASP, the semantics of $P$ is given by its `stable models`. To this end, the `reduct`, $P^X$, of $P$ relative to a set $X$ of atoms is defined by

$$P^X = \left \{ head(r) \leftarrow body(r)^+ | r \in P, body(r)^- \cap X = \empty \right \}$$

Note that $P^X$ is a positive program, thus possessing a unique $\subseteq$-minimal model. Given this, X is a `stable model` of $P$, if X is the $\subseteq$-minimal model of $P^X$.

## Language Extensions

### First-Order Variables

Given a normal logic program $P$ over a set of non-ground atom $\mathtt{A}$, a set $X \subseteq grd(A$$ of ground atoms is a stable model of $P$, if $X$ is the $\subseteq$-minimal model of $grd(P)^X$.

### Core Language

#### Integrity Contraints

An integrity constraint is of the form:

$$\leftarrow a_1, \dots, a_m, \sim a_{m+1}, \dots, \sim a_n$$

where $0 \leq m \leq n$ and each $a_i$ is an atom for $1 \leq i \leq n$.

An integrity constraint can be translated into a normal rule. To this end, the constraint is mapped onto the rule:

$$x \leftarrow a_1, \dots, a_m, \sim a_{m+1}, \dots, \sim a_n, \sim x$$

where $x$ is a new symbol, that is, $x \not\in A$

In general, the adition of integrity constraints to a logic program can neither produce new stable models nor alter existing ones; rather it can only lead to their elimination.

#### Choice rules

A choice rule is of the form

$$\{ a_1, \dots, a_m\} \leftarrow a_{m+1}, \dots, a_n, \sim a_{n+1}, \dots, \sim a_o$$
