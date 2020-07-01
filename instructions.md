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

Content for the website is copied in from the COGS108 organization.

Note that none of sources for the materials are managed or stored in this repository.

Materials should not be edited directly in this repository, other than to edit out class details for the public version.

All development of materials must be done on the COGS108 organization.

#### Tutorials

Tutorial materials are copied from the [Tutorials](https://github.com/COGS108/Tutorials) repository.

No updates to the materials should be needed for hosting these materials on the public site.

#### Assignments

Assignment materials are copied from the [Demo Assignments](https://github.com/COGS108/Assign_Demo) repository.

Assignments need to be updated to replace the header of the assignments to indicate that they are not valid assignments for 108.

Currently, this is semi-automated, with scripts in development to update assignments programmatically, and some manually tuning needed.

#### Project

Project materials are copied over from the [Projects](https://github.com/COGS108/Projects) repository.

The project file needs editing, to remove sections are specific to the course. Currently, this is done manually.

## Build Schedule

The website should be rebuilt periodically, to add updates to the materials to the public website.

A proposed schedule is to re-build this site at the end of every semester in which the course is taught, in order to integrate updated materials into the public release.
