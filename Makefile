.PHONY: 		cljsjs default deploy test

cljsjs:
			cd cljsjs && rm -rf out && clj -m cljs.main -co co.edn -c --repl
