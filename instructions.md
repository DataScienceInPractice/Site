# Building the Site

Notes and instructions for building the public
[Data Science in Practice](https://datascienceinpractice.github.io/)
site.

## Overview

This repository and associated website serve as a public version of materials for the
[COGS108](https://github.com/cogs108) course from UC San Diego.

This repository,
[Site](https://github.com/DataScienceInPractice/Site),
is used to organize and create the website, which is then pushed to be hosted from the
[source](https://github.com/DataScienceInPractice/datascienceinpractice.github.io) repository.

## Building the Site

Functionality to manage content and build the site is all controlled by a
[Makefile](https://github.com/DataScienceInPractice/Site/blob/master/Makefile).

The site is created with the
[Jupyter-book](https://github.com/executablebooks/jupyter-book)
tool, which is a requirement for running the Makefile.

## Content

Content for the website is copied in from the
[COGS108 organization](https://github.com/cogs108).

The idea here is that this repository copies in materials created for COGS108, and hosts a public version.

Note that as this procedure copies in files from the course organization, the original source
files for these materials are not stored in this repository. Any development of these materials
should be done on the original files in the COGS108 organization.

This repository does contain copies of the materials, as are presented on the website.
Note that these files are likely to have been edited for public release, and so may differ
from the original files.

Note that for rebuilding the public website, there are manual edits to some files that are needed,
as described below.

#### Tutorials

Tutorial materials are copied from the [Tutorials](https://github.com/COGS108/Tutorials) repository.

No updates to the materials should be needed for hosting these materials on the public site.

#### Assignments

Assignment materials are copied from the [Demo Assignments](https://github.com/COGS108/Assign_Demo) repository.

Assignments need to be updated to replace the header of the assignments to indicate that they are not valid assignments for 108.

Currently, the Makefile will copy over and rename files the DX (for "demo"). Manual tuning is then needed to remove course information and add a note that these are not valid 108 files.

Note that with any updates, if any data files change, this needs to be coordinated with the
[Data](https://github.com/dataScienceInPractice/Data) repository.

#### Project

Project materials are copied over from the
[Projects](https://github.com/COGS108/Projects) repository, and from the
[group template](https://github.com/COGS108/group_template) repository.

The project files need manual editing, to remove sections are specific to the course.

## Build Schedule

The website should be rebuilt periodically, to add updates to the materials to the public website.

A proposed schedule is to re-build this site at the end of every semester in which the course is taught, in order to integrate updated materials into the public release.
