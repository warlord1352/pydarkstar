GH_PAGES_SOURCES=README.md doc pydarkstar

gh-pages:
	git checkout gh-pages
	git reset HEAD
	./clean.py
	rm -rf ${GH_PAGES_SOURCES}
	git checkout master ${GH_PAGES_SOURCES}
	git reset HEAD
	cd ./doc; ./build.sh
	mv -fv ./doc/build/html/* ./
	rm -rf ${GH_PAGES_SOURCES}
	git checkout .nojekyll

publish:
	git add -A
	git c -m "Update gh-page"

push:
	git push
