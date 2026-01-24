# CP-TP — Program Calculation

This repository contains the **final report and implementation** of the **Practical Assignment for the course _Program Calculation_**, developed within the  
**Bachelor’s Degree in Computer Engineering / Computer Science**  
at the **University of Minho** (academic year **2025/2026**).

The project was implemented in **Haskell**, strictly following the principles of **Program Calculation**, **Functional Programming**, and **Literate Programming**, as taught in the course.

---

## Grade

**Final Grade: 20 / 20**

---

## Project Overview

The main goal of this project is to apply the theoretical foundations of **Program Calculation** to the systematic derivation of correct and efficient programs.  
All solutions are obtained through algebraic reasoning, recursion schemes, and formal justification.

A key requirement of the assignment is that **code and documentation coincide**, following the paradigm of *literate programming*.  
As such, the entire project is written in a single `.lhs` (Literate Haskell) file, which simultaneously serves as:

- Executable Haskell source code  
- Complete technical report  
- Formal derivation and justification of all solutions  

---

## Topics and Concepts Covered

- Catamorphisms and anamorphisms  
- Mutual recursion and its algebraic laws  
- Breadth-first and depth-first tree traversals  
- Stream processing and fair interleaving  
- Probabilistic programming using monads  
- Formal derivations from mathematical specifications  
- Diagrammatic reasoning  
- Literate programming in Haskell  

---

## Problems Addressed

### Problem 1 — Breadth-First Traversal of Binary Trees

- Definition of a breadth-first traversal using:
  - A catamorphism that computes tree levels
  - An anamorphism that directly generates the traversal
- Comparison between depth-first and breadth-first approaches
- Formal derivation of the corresponding recursion schemes

---

### Problem 2 — Derivation of the Hyperbolic Sine Function

- Derivation of the function `sinh` from its Taylor series
- Transformation of a mathematical specification into an efficient algorithm
- Application of the law of mutual recursion
- Performance analysis and comparison with a naïve implementation

---

### Problem 3 — Fair Merge of Infinite Streams

- Formalization of fair interleaving between two infinite streams
- Definition of `fair_merge` as an anamorphism
- Derivation using the dual law of mutual recursion

---

### Problem 4 — Probabilistic Message Transmission

- Modeling a faulty telegraph system using probabilistic computation
- Definition of a probabilistic catamorphism over lists
- Use of the distribution monad to compute transmission probabilities
- Analytical validation of the obtained results

---

## Technologies and Tools Used

- Haskell
- Literate Haskell (`.lhs`)
- GHCi
- lhs2TeX
- LaTeX
- BibTeX
- MakeIndex
- Docker

---

## Building the Report

The project can be built either **using Docker (recommended)** or **locally** using `lhs2TeX` and LaTeX tools.

---

### Option 1 — Using Docker (Recommended)

Docker provides a controlled environment with all required dependencies preinstalled.

```bash
docker build -t cp2526t .
docker run -v ${PWD}:/cp2526t -it cp2526t
```
Inside the container, generate the full report with:
```bash
make
```
### Option 2 — Using lhs2TeX Locally
```bash
lhs2TeX cp2526t.lhs > cp2526t.tex
pdflatex cp2526t
bibtex cp2526t.aux
makeindex cp2526t.idx
pdflatex cp2526t
pdflatex cp2526t
```

After these steps, the final PDF report will be generated.












