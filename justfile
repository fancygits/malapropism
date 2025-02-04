default:
    @just --list

test:
    @clojure -X:test

lint:
    @rg -tclojure -tedn --files | xargs clj-kondo --parallel --lint

check:
    @clojure -M:check

install:
    @clojure -T:build install

publish:
    @clojure -T:build deploy
