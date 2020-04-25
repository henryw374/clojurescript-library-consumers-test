.PHONY: 		cljsjs webpack shadow

cljsjs:
			cd cljsjs && rm -rf out && clj -m cljs.main -co co.edn -c --repl
webpack:
			cd webpack && rm -rf out package.json node_modules && clj -m cljs.main --install-deps && clj -m cljs.main -co co.edn -c --repl
shadow:
			cd shadow && rm -rf node_modules out && npm install shadow-cljs --save-dev && npx shadow-cljs release app && clj -m cljs.main --serve 
compiling-with-npm-deps-opt:
			cd compiling-with-npm-deps-opt && rm -rf out node_modules package.json && clj -m cljs.main -co co.edn -c --repl
