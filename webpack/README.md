quick demo to show that using the :bundle target with cljs
in a webpack build, it is not possible to pick up declared `:npm-deps`  of 
cljs libraries

based on [webpack demo](https://github.com/clojure/clojurescript-site/blob/april-release-target-bundle/content/guides/webpack.adoc)
on Clojurescript site

first need to get the transitive npm deps
turn on :infer-externs
remove the cljsjs dependency