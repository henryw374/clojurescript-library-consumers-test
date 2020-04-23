(ns using.js-joda
  (:require ["@js-joda/core" :as js-joda]))

(.log js/console (str "today's date is " (.now js-joda/LocalDate)))
