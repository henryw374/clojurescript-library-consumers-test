(ns clojurescript.using-npm-dependency
  (:require [java.time :refer [LocalDate]]))


(.log js/console (str "today's date is " (.now LocalDate)))

