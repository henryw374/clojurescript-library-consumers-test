# Does you Clojurescript library work for everyone?

The aim of this project is to help test that different Clojurescript build types can 
successfully consume an npm-depending library.

This project was created to support my [guide to authoring Clojurescript libraries]()

This project currently just tests the npm-depending library [cljs.java-time](https://github.com/henryw374/cljs.java-time), but is easily changed to test other libraries.

Ultimately I would like to automate this so you can point it to any Clojurescript lib like so:

```
make test-lib {my-lib {:mvn/version "1.1"}} my-test-ns.cljs
``` 

and it would point the compiled js files to a cljs test runner to produce a report about pass/fail, build size etc.

## Usage

```
make list

```

shows the available build targets. For each, run the task e.g. `make target-bundle` and open a browser at http://localhost:9000 and open the console.
You should see a sensible message printed if the build succeeded.

The top-level Makefile shows the commands used to compile for each build tool

## Testing your own npm-depending library

Change the top-level deps.edn to point to your library and change the contents of the 
`clojurescript.using-npm-dependency` namespace to do something to use the library.

## Rationale

It is important for library authors to check if an npm-depending library works when subjected to advanced 
compilation. Also useful is to be able to let users of the library know what they must do to make
your library work  - whatever their Clojurescript build setup. So this library does both those 
things: provides examples of all the build tools compiling an npm-depending library under advanced
optimization.  
