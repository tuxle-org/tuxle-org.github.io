build:
	@echo "Building project..."
	@mend ./src /tmp/mend-build

	@echo "Saving into gh-pages directory..."
	# find . -mindepth 1 -not -path './.git*' -exec rm -rf {} +
	@find ../gh-pages/ -mindepth 1 -not -path '**/*.git'
	@cp -r /tmp/mend-build/* ../gh-pages/.

minimize:
	# Install using: npm install -g html-minifier-terser
	bash ./minimize.sh
