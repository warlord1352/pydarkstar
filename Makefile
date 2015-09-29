GH_PAGES_SOURCES=README.md doc pydarkstar

gh-pages:
	git checkout gh-pages
	git reset HEAD
	find . -not -name index.html -and \
           -not -name .git       -and \
           -not -name Makefile   -and \
           -not -name .             | \
	xargs -I xxx rm -rf xxx
	rm -rf ${GH_PAGES_SOURCES}
	git checkout dev ${GH_PAGES_SOURCES}
	git reset HEAD
	$(MAKE) -C ./doc html
	mv -fv ./doc/build/html/* ./
	rm -rf ${GH_PAGES_SOURCES}

