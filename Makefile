.PHONY: clean compile test

clean:
	rm -rf build
	rm -rf elm-stuff

test:
	echo "TODO"

compile:
	elm-make src/Component/Header.elm --output build/main.html

