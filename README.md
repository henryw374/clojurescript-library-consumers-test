# test that different clojurescript build types can consume an npm-depending library

usage:

```
make list

```

shows the available build targets. Run e.g. `make webpack` and open a browser at http://localhost:9000 and open the console.
you should see a sensible message printed if the build succeeded.

## relevant open Cljs issues

There are a few open Jira issues relating to compilation with `{:npm-deps true}`

Support transitive Node dependencies with foreign libraries
https://clojure.atlassian.net/browse/CLJS-3117

Missing warning when npm-deps shadows global-exports or vice versa
https://clojure.atlassian.net/browse/CLJS-3082