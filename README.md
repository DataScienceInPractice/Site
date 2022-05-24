# Data Science in Practice Site
[![Project Status: Active](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Website](https://img.shields.io/badge/site-datascienceinpractice.github.io-informational.svg)](https://datascienceinpractice.github.io)
[![License: CC-BY 4.0](https://img.shields.io/badge/License-CC--BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)
[![DOI](https://jose.theoj.org/papers/10.21105/jose.00121/status.svg)](https://doi.org/10.21105/jose.00121)

Data science in practice is a collection of materials for learning introductory data science.

## Overview

This repository is the source repository for creating the [Data Science in Practice](https://datascienceinpractice.github.io/) website.

Specifically, the website contains:
- `tutorials`, which introduce key topics for doing data science
- `assignments`, which are problem sets that can be worked through
- `projects`, which describes how to pursue independent analysis projects

These materials serve as a public version of materials from the [COGS108](https://github.com/COGS108) class.

This repository has the tools for building the website. To do so, it copies materials from the 
COGS 108 organization, and then updates and organizes them for the public website. See the 
[instructions](https://github.com/DataScienceInPractice/Site/blob/main/instructions.md) 
page for notes on how this works.

The built version of book is then posted to the
[website repository](https://github.com/DataScienceInPractice/datascienceinpractice.github.io)
for hosting.

## Dependencies

This project uses the Python programming language, and requires Python >= 3.6. 

Materials are written and available as [Jupyter Notebooks](https://jupyter.org/). 

Tutorials & assignments require packages from the scientific Python ecosystem. These dependencies can all be installed using the 
[Anaconda distribution](https://www.anaconda.com/products/individual). Details and instructions on the dependencies
and how to get them are available in the materials.

The website is created using [JupyterBook](https://github.com/executablebooks/jupyter-book).

## Organization

This repository contains the following sections:

- `dsip/` contains the content of the website, including sub-sections:
    - `docs/` contains the source for written sections of the site
    - `tutorials/` contains tutorial notebooks which introduce key topics for doing data science
    - `assignments/` contains assignment notebooks with problem sets that can be worked through
    - `projects/` contains information on how to pursue independent analysis projects
- `paper/` contains a copy of the paper that describes these materials

## Reference

This project is described in the following paper:

    Donoghue T, Voytek B, & Ellis S (2022). Course Materials for Data Science in 
    Practice. Journal of Open Source Education, 5(51), 121. DOI: 10.21105/jose.00121

Direct Link: https://doi.org/10.21105/jose.00121

## License

These materials are made freely available, and are licensed under a [CC-BY 4.0](https://creativecommons.org/licenses/by/4.0/) license.
