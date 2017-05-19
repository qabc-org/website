node_modules:
	yarn

.PHONY: clean

clean:
	rm -rf ./build
	rm -rf ./node_modules
	rm -f yarn.lock

build: node_modules
	node ./node_modules/metalsmith/bin/_metalsmith
