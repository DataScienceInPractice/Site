
# Clone the content repositories for making the website
clone:

	# Copy tutorial materials
	@git clone --depth 1 https://github.com/COGS108/Tutorials dsip/tutorials
	@rm dsip/tutorials/README.md

	# Copy & build assignments
	# git clone --depth 1 https://github.com/COGS18/assignments content/assignments
	# rm content/assignments/README.md

# Clear out the copied repositories
clear:

	# Clear tutorial materials
	rm -rf dsip/tutorials

# Build the textbook
build:
	jupyter-book build dsip/

# Deploy the website
deploy:

	# Create the textbook
	make build

	# Clone the website deployment repository
	git clone --depth 1 https://github.com/datascienceinpractice/datascienceinpractice.github.io _build/deploy/

	# A .nojekyll file tells Github pages to bypass Jekyll processing
	touch _build/deploy/.nojekyll

	# Copy site into the gh-pages branch folder, then push to Github to deploy
	cd _build/ && \
	cp -r html/ deploy && \
	cd deploy && \
	git add * && \
	git add .nojekyll && \
	git commit -a -m 'Make install' && \
	git push
