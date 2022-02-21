# Makefile for the Data Science in Practice site


##########################################################################
## REQUIREMENTS
#
# This file requires `jupyter-book` for building the site.
#

##########################################################################
## VARIABLES

BOOK     	    = dsip
CONTENT-ORG   	= https://github.com/COGS108
BOOK-ORG  	    = https://github.com/datascienceinpractice
SITE-LOC        = datascienceinpractice.github.io


##########################################################################
## CLONING MATERIALS

# Clone all materials
clone:

	clone-tutorials
	clone-assignments
	clone-projects

# Clone the tutorials
clone-tutorials:

	# Copy tutorial materials
	@git clone --depth 1 $(CONTENT-ORG)/Tutorials $(BOOK)/tutorials
	@rm $(BOOK)/tutorials/README.md
	@rm -rf $(BOOK)/tutorials/.git

# Clone the assignments
clone-assignments:

	# Clone assignments demo repo, and copy out files (to re-org & rename)
	@git clone --depth 1 $(CONTENT-ORG)/Assign_Demo $(BOOK)/temp
	@mv $(BOOK)/temp/release/A1/A1_git_python.ipynb $(BOOK)/assignments/D1_Python.ipynb
	@mv $(BOOK)/temp/release/A2/A2_Pandas.ipynb $(BOOK)/assignments/D2_Pandas.ipynb
	@mv $(BOOK)/temp/release/A3/A3_DataExploration.ipynb $(BOOK)/assignments/D3_DataExploration.ipynb
	@mv $(BOOK)/temp/release/A4/A4_DataPrivacy.ipynb $(BOOK)/assignments/D4_DataPrivacy.ipynb
	@mv $(BOOK)/temp/release/A5/A5_DataAnalysis.ipynb $(BOOK)/assignments/D5_DataAnalysis.ipynb
	@mv $(BOOK)/temp/release/A6/A6_NaturalLanguageProcessing.ipynb $(BOOK)/assignments/D6_NaturalLanguageProcessing.ipynb
	@rm -rf $(BOOK)/temp

# Clone the project information
clone-projects:

	# Copy over the project repositories into temporary repositories
	@git clone --depth 1 $(CONTENT-ORG)/Projects $(BOOK)/temp1
	@git clone --depth 1 $(CONTENT-ORG)/group_template $(BOOK)/temp2

	# Copy over the files we want
	@mkdir $(BOOK)/projects
	@mv $(BOOK)/temp1/README.md $(BOOK)/projects/project_checklist.md
	@mv $(BOOK)/temp1/FinalProject_Guidelines.md $(BOOK)/projects/project_guidelines.md
	@mv $(BOOK)/temp2/ProjectProposal_groupXXX.ipynb $(BOOK)/projects/ProjectProposal.ipynb
	@mv $(BOOK)/temp2/FinalProject_groupXXX.ipynb $(BOOK)/projects/ProjectReport.ipynb

	# Clear out the temporary folders
	@rm -rf $(BOOK)/temp1
	@rm -rf $(BOOK)/temp2


##########################################################################
## CLEAN UPS

# Clear out the copied repositories
clear:

	# Clear all cloned materials
	clear-tutorials
	clear-assignemnts
	clear-projects

clear-tutorials:
	rm -rf $(BOOK)/tutorials

clear-assignemnts:
	rm -rf $(BOOK)/assignments

clear-projects:
	rm -rf $(BOOK)/projects

# Clean out the built textbook
clean:
	jupyter-book clean $(BOOK_NAME)/


##########################################################################
## BUILDING SITE

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
