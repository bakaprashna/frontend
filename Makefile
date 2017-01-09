.PHONY: clean compile test

clean:
	rm -rf build
	rm -rf elm-stuff

test:
	echo "TODO"

compile:
	elm-make src/Main.elm --output build/main.html

format:
	elm-format --yes src/Main.elm
