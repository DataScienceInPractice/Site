# Makefile for the Data Science in Practice site


##########################################################################
## REQUIREMENTS
#
# This file requires `jupyter-book` for building the site.
#

##########################################################################
## VARIABLES

BOOK     	= dsip
CONTENT-ORG   	= https://github.com/COGS108
BOOK-ORG  	= https://github.com/datascienceinpractice
SITE-LOC        = datascienceinpractice.github.io


##########################################################################
## CLONING MATERIALS

# Clone all materials
clone:
	clone-tutorials
	#clone-assignments
	clone-projects

# Clone the tutorials
clone-tutorials:

	# Copy tutorial materials
	@git clone --depth 1 $(CONTENT-ORG)/Tutorials $(BOOK)/tutorials
	@rm $(BOOK)/tutorials/README.md
	@rm -rf $(BOOK)/tutorials/.git

# Clone the assignments
clone-assignments:

	# Copy & build assignments
	# @git clone --depth 1 $(CONTENT-ORG)/assignments $(BOOK)/assignments
	# @rm content/assignments/README.md
	# @rm -rf $(BOOK)/assignments/.git

# Clone the project information
clone-projects:

	# Copy & build project information
	@git clone --depth 1 $(CONTENT-ORG)/Projects $(BOOK)/temp

	# Current work-around to pull out what we want from projects
	@mkdir $(BOOK)/projects
	@mv $(BOOK)/temp/Option1_Group/FinalProject_Guidelines.md $(BOOK)/projects/projects.md
	@mv $(BOOK)/temp/Option1_Group/ProjectProposal_groupXX.ipynb $(BOOK)/projects/ProjectProposal.ipynb
	@mv $(BOOK)/temp/Option1_Group/FinalProject_groupXX.ipynb $(BOOK)/projects/ProjectReport.ipynb
	@rm -rf $(BOOK)/temp


##########################################################################
## BUILDING SITE

# Clear out the copied repositories
clear:

	# Clear cloned materials
	rm -rf $(BOOK)/tutorials
	#rm -rf $(BOOK)/assignments
	#rm -rf $(BOOK)/projects

# Build the textbook
build:
	jupyter-book build $(BOOK)/


##########################################################################
## DEPLOYING SITE

# Deploy the website
deploy:

	# Create the textbook
	make build

	# Clone the website host repository
	rm -rf $(BOOK)/_build/deploy/
	git clone --depth 1 $(BOOK-ORG)/$(SITE-LOC) $(BOOK)/_build/deploy/

	# Add .nojekyll file to tell Github pages to bypass Jekyll processing
	touch $(BOOK)/_build/deploy/.nojekyll

	# Copy site source into the host repo folder, then push to Github to deploy
	cd $(BOOK)/_build/ && \
	cp -r html/ deploy && \
	cd deploy && \
	git add * && \
	git add .nojekyll && \
	git commit -a -m 'deploy site' && \
	git push
