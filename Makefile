.PHONY: 		cljsjs target-bundle shadow compiling-with-npm-deps-opt

.PHONY: compiling-with-npm-deps-opt
			cd compiling-with-npm-deps-opt && rm -rf out && clj -m cljs.main --install-deps && clj -m cljs.main -co co.edn -c --repl
cljsjs:
			cd cljsjs && rm -rf out && clj -m cljs.main -co co.edn -c --repl
target-bundle:
			cd target-bundle && rm -rf out package.json node_modules && clj -m cljs.main --install-deps && clj -m cljs.main -co co.edn -c --repl
shadow:
			cd shadow && rm -rf node_modules out && npm install shadow-cljs --save-dev && npx shadow-cljs release app && clj -m cljs.main --serve 
compiling-with-npm-deps-opt:
			cd compiling-with-npm-deps-opt && rm -rf out node_modules package.json && clj -m cljs.main -co co.edn -c --repl
.PHONY: list
list:
		@$(MAKE) -pRrq -f $(lastword $(MAKEFILE_LIST)) : 2>/dev/null | awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$' | xargs
