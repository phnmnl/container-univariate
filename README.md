<!-- Guidance:
Logo: The logo needs have the text "Logo" inside the square bracket place holder to be recognized at the App Library.
Tool name: First single hashtag (#) will be taken as tool name.
Version: Should always go after the first hastag and before the second hastag. The line needs to respond to the regexp "^Version: (.+)" being the first group the actual version.

Fields: for the App Library, the following fields will be parsed:

# Name of the tool
Version: z.x-whatever
## Short description
## Description
## Key features
## Publications
## Screenshots
## Tool Authors 
- Author 1 and affiliation
- [Author 2](link_to_author_2) and affiliation
## Container Contributors
- Contributor 1
- [Contributor 2](link_to_contributior_2) and affiliation
## Website
## Usage Instructions

Free text with triple tick code blocks, comprising docker, ipython and galaxy usage

## Installation 

They all have to be at the second hashtag level

For screenshots, you should use the following scheme:

![screenshot](screenshots/s1.gif)
![screenshot](screenshots/s2.gif)

-->
![Logo](w4m.png)

# W4M Univariate
Version: 2.1.4

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
