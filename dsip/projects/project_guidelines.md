# Project Guide

This is an edited version of the project guidelines used for the course.

If you wish to pursue an independent data science project, this outline may be a useful guide.

## Project Overview

The Final Project will give you the chance to explore a topic of your choice and to expand your analytical skills. By working with real data of your choosing you can examine questions of particular interest to you.

The broad objectives for the project are to:

* Identify the problems and goals of a real situation and dataset.
* Choose an appropriate approach for formalizing and testing the problems and goals, and be able to articulate the reasoning for that selection.
* Implement your analysis choices on the dataset.
* Interpret the results of the analyses.
* Contextualize those results within a greater scientific and social context, acknowledging and addressing any potential issues related to privacy and ethics.

The basic project steps (broken down in more detail below):

* Find a real world dataset and problem that you believe can be solved with one or more of the techniques we have learned in class.
* After selecting a dataset and identifying the goal, write out a proposed analysis plan using template provided and submit it through GitHub for review.
* Apply the techniques outlined and come up with a result for the dataset that you proposed.
* Assemble a Jupyter notebook that communicates your hypothesis, methods, and results. Submit this as your final project.
* Submit feedback about group and individual group members. This is done individually.

## Project Components

### Project Proposal

The project proposal includes the following sections:

**RESEARCH QUESTION**: What is your research question? Include the specific question you're setting out to answer. This question should be specific, answerable with data, and clear. A general question with specific subquestions is permitted. (1-2 sentences)

**BACKGROUND & PRIOR WORK**: This section will present the background and context of your topic and question in a few paragraphs. Include a general introduction to your topic and then describe what information you currently know about the topic after doing your initial research. Include references to other projects who have asked similar questions or approached similar problems. Explain what others have learned in their projects.

Find some relevant prior work, and reference those sources, summarizing what each did and what they learned. Even if you think you have a totally novel question, find the most similar prior work that you can and discuss how it relates to your project.

References can be research publications, but they need not be. Blogs, GitHub repositories, company websites, etc., are all viable references if they are relevant to your project. It must be clear which information comes from which references. (2-3 paragraphs, including at least 2 references)

**HYPOTHESIS**: What is your main hypothesis/predictions about what the answer to your question is? Briefly explain your thinking. (2-3 sentences)

**DATA**: Here, you are to *think* about and *describe* the *ideal* dataset (or datasets) you you would need to answer this question:

* What variables would you have?
* How would they be stored?
* How many observations would you have?
* What/who would the observations be? Over what time period? etc.
* etc.

Note: For the project proposal, you do NOT have to find the actual dataset(s) needed for your project. For the first checkpoint and onward, you will.

**ETHICS & PRIVACY**: Acknowledge and address any ethics & privacy related issues of your question(s), proposed dataset(s), and/or analyses. Use the information provided in lecture to guide your group discussion and thinking. If you need further guidance, check out [Deon's Ethics Checklist](http://deon.drivendata.org/#data-science-ethics-checklist). In particular:

* Are there any biases/privacy/terms of use issues with the data you propsed?
* Are there potential biases in your dataset(s), in terms of who it composes, and how it was collected, that may be problematic in terms of it allowing for equitable analysis? (For example, does your data exclude particular populations, or is it likely to reflect particular human biases in a way that could be a problem?)
* How will you set out to detect these specific biases before, during, and after/when communicating your analysis?
* Are there any other issues related to your topic area, data, and/or analyses that are potentially problematic in terms of data privacy and equitable impact?
* How will you handle issues you identified?

(1-2 paragraphs)

#### Project Proposal - Style Guidelines

The proposal should be written clearly and at a level understandable by a typical undergraduate student.

This is a short but detailed proposal meant to give us time to assess and critique your Final Project idea (further described below), in order to give you time to improve upon it throughout the quarter.

Remember to proofread your Project Proposal. Do not use overly flowery and/or vague language.

### Final Project

Time to put it all together! The main products of the final project are 1) a report submitted as single Jupyter Notebook on GitHub and 2) a 3-5 minute video communicating your group project.

#### Final Report

This single notebook should include all the code you used for all components of the project (cleaning, visualization, analysis). Because we won’t be running the code in your notebook, it is important to make sure your notebook as submitted to GitHub has the code evaluated and outputs present (e.g., plots) so that we can read the project as is.

#### Report Sections - Instructions

Each of the following sections corresponds to a section in the file FinalProject_groupXXX.ipynb (template is in your group's GitHub repo).

For sections included in your proposal and previous checkpoints, you can copy and paste into your final project, but be sure to edit these sections with feedback you received on your proposal or additional information you learned throughout the project. This report should read clearly from start to finish, explaining what you did, why you did it, and what you learned. This should be a concise and well-written report.

**PERMISSIONS**: Specify whether you want your group project to be made publicly available. Place an X in the square brackets where appropriate.

**OVERVIEW**: Include 3-4 sentences summarizing your group’s project and results.

**NAMES**: See proposal specifications.

**RESEARCH QUESTION**: See proposal specifications.

**BACKGROUND & PRIOR WORK**: See proposal specifications.

**HYPOTHESIS**: See proposal specifications.

**DATASET(S)**: Same as Checkpoint #1.

**SETUP**: See Checkpoint #1.

**DATA CLEANING**: See  Checkpoint #1.

**DATA ANALYSIS & RESULTS**: This section should include markdown text and code walking us through the following:

* EDA (Same as Checkpoint #2, but clean visualizations up and feel free to remove unecessary visualizations)
  * What distributions do your variables take?
  * Are there any outliers?
  * Relationship between variables?

* Analysis (Note that you will likely have to do some Googling for analytical approaches not discussed in class. This is expected for this project and an important skill for a data scientist to master.)
  * What approaches did you use? Why?
  * What were the results?
  * What were your interpretation of these findings.

* Data Visualization - There must be at least three (3) appropriate data visualizations throughout these sections. Each visualization must included an interpretation of what is displayed *and* what should be learned from that visualization. Be sure that the appropriate type of visualization is generated given the data that you have, axes are all labeled, and the visualizations clearly communicate the point you’re trying to make.

**ETHICS & PRIVACY**: See proposal specifications. (be sure to update with what you actually did to take the ethical considerations into account for the analysis you did!)

**CONCLUSION & DISCUSSION**: Discuss your project. Summarize your data and question. Briefly describe your analysis. Summarize your results and conclusions. Be sure to mention any limitations of your project. Discuss the impact of this work on society. (2-3 paragraphs)


## Previous Final Projects

See Prof. Voytek’s write-up of excellent class projects from the Spring 2017 instance of COGS 108 [here](https://voyteklab.com/uc-san-diego-data-science-projects/), all of which received perfect scores.

Additionally, previous projects can be viewed from when this course ran in [Spring 2017](https://github.com/COGS108/FinalProjects-Sp17), [Winter 2018](https://github.com/COGS108/FinalProjects-Wi18), [Spring 2019](https://github.com/COGS108/FinalProjects-Sp19), [Fall 2019](https://github.com/COGS108/FinalProjects-Fa19), [Winter 2020](https://github.com/COGS108/FinalProjects-Wi20), [Spring 2020](https://github.com/COGS108/FinalProjects-Sp20), [Fall 2020](https://github.com/COGS108/FinalProjects-Fa20), or [Winter 2021](https://github.com/COGS108/FinalProjects-Wi21). Note first, that these projects are of variable quality and second, that if you get inspiration or code from previous projects, this must be noted in your project, giving attribution to the former groups’ work.

## How to Find Datasets

The purpose of this project is to find a real-world problem and dataset (or likely, datasets!) that can be analyzed with the techniques learned in class and those you learn on your own. It is imperative that by doing so you believe extra information will be gained — that you believe you can discover something new!

You must use at least one dataset containing at least approximately 1000 observations (if your data are smaller but you feel they are sufficient. You are welcome (and in fact recommended) to find multiple datasets!

The best datasets are the ones that can help you answer your question of interest.

Your question could be just for fun: Using text mining of song lyric websites to identify the most commonly used phrases and sentiments by decade.

Your question could be scientific: Scrape data from animal taxonomies and Wikipedia to figure out if larger animals are more likely to be carnivores?.

Or, ideally, your question can be aimed at civic or social good, for example, use mapping, transit, and car accident data to identify which parts of San Diego are most in need of dedicated bike lanes.

To help you find datasets, we have collected a list of websites that have a considerable number of open source data sets and included them at the end of this document.

### Dataset Resource List

Here, is a list of potential locations to find datasets and problems to investigate. If you have another dataset or search location, that is great!

* [Awesome Public Datasets](https://github.com/awesomedata/awesome-public-datasets/blob/master/README.rst)
* [Data.gov](https://catalog.data.gov/dataset)
* [Data Is Plural](https://docs.google.com/spreadsheets/d/1wZhPLMCHKJvwOkP4juclhjFgqIY8fQFMemwKL2c64vk/edit#gid=0)
* [UCSD Datasets](https://ucsd.libguides.com/data-statistics/home)
* [Datasets | Deep Learning](http://deeplearning.net/datasets/)
* [Stanford | Social Science Data Collection](https://data.stanford.edu/)
* [Eviction Lab (email required)](https://evictionlab.org/get-the-data/)
* [San Diego Data](https://data.sandiego.gov/)
* [US Census](https://www.census.gov/)
* [Open Climate Data](http://openclimatedata.net/)
* [Data and Story Library](https://dasl.datadescription.com/datafiles/)
* [UCSD behavioral mobile data](http://extrasensory.ucsd.edu/)
* [Kaggle](https://www.kaggle.com/)
* [FiveThirtyEight](https://data.fivethirtyeight.com/)
* [data.world](https://data.world/)
* [Free Datasets - R and Data Mining ](http://www.rdatamining.com/resources/data)
* [Data Sources for Cool Data Science Projects](https://blog.thedataincubator.com/2014/10/data-sources-for-cool-data-science-projects-part-1/)
