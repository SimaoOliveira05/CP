# CP

The main goal of this project is to apply the theoretical foundations of **Program Calculation** to the systematic derivation of correct and efficient programs.  
All solutions are obtained through algebraic reasoning, recursion schemes, and formal justification.

## Grade

**Final Grade:** 20 / 20 ⭐

## Authors

- *Gabriel Dantas* -> [@gabil88](https://github.com/gabil88)
- *José Fernandes* -> [@JoseLourencoFernandes](https://github.com/JoseLourencoFernandes)
- *Simão Oliveira* -> [@SimaoOliveira05](https://github.com/SimaoOliveira05)

## Building the Report

The project can be built either **using Docker (recommended)** or **locally** using `lhs2TeX` and LaTeX tools.

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












