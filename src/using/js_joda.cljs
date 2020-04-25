(ns using.js-joda
  (:require [java.time :refer [LocalDate]]))


(.log js/console (str "today's date is" (.now LocalDate)))
