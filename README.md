<!-- Guidance: see https://github.com/phnmnl/phenomenal-h2020/wiki/The-Guideline-for-Container-GitHub-Respository-README.md-Creation -->

![Logo](w4m.png)

# W4M Univariate
Version: 2.2.6

## Short description

<!-- 
This should only be 20 to 40 words, hopefully a single sentence.
-->

Univariate statistics.

## Description

The module performs two sample tests (t-test and Wilcoxon rank test),
analysis of variance and Kruskal-Wallis rank test, and correlation
tests (by using either the pearson or the spearman correlation), with
correction for multiple testing.

## Key features

- Statistics
- Correction for multiple testing

## Functionality

- Statistical Analysis

## Approaches

- Metabolomics / Targeted
- Metabolomics / Untargeted

## Data Analysis

- Statistics

## Screenshots

## Tool Authors

- Marie Tremblay-Franco (INRA, MetaToul, MetaboHUB).
- [Étienne Thévenot](http://etiennethevenot.pagesperso-orange.fr) (CEA, LIST, MetaboHUB).

## Container Contributors

- Pierrick Roger (CEA).

## Website

- http://workflow4metabolomics.org

## Git Repository

- https://github.com/phnmnl/container-univariate.git

## Installation 

For local individual installation:

```bash
docker pull docker-registry.phenomenal-h2020.eu/phnmnl/univariate
```

## Usage Instructions

For direct docker usage:

```bash
docker run docker-registry.phenomenal-h2020.eu/phnmnl/univariate ...
```

## Publications

<!-- Guidance:
Use AMA style publications as a list (you can export AMA from PubMed, on the Formats: Citation link when looking at the entry).
-->

 - Benjamini Y. and Hochberg Y. (1995). Controlling the false discovery rate: a practical and powerful approach for multiple testing. Journal of the Royal Statistical Society. Series B (Methodological), 57:289-300.
 - Dalgaard P. (2002). Introductory statistics with R. Springer.
 - Pohlert T. (2015). PMCMR: Calculate pairwise multiple comparisons of mean rank sums. R package on CRAN.
