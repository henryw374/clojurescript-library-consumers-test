.PHONY: 		cljsjs default deploy test

cljsjs:
			cd cljsjs && rm -rf out && clj -m cljs.main --optimizations advanced -c using.js-joda && clj -m cljs.main --serve
