# Build and preview the site locally.
#
#   make site    -> install dependencies and serve at http://localhost:4000
#   make clean    -> remove generated files
#
# Leave the server running while you edit; pages reload automatically.
# (After editing _config.yml you must stop with Ctrl-C and run `make site` again.)

site:
	bundle install --path vendor/bundle
	bundle exec jekyll serve --livereload

clean:
	rm -rf .jekyll-cache _site
