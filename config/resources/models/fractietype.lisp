(define-resource fractietype ()
  :class (s-prefix "ext:Fractietype")
  :properties `((:label :string ,(s-prefix "skos:prefLabel"))
                (:scope-note :string ,(s-prefix "skos:scopeNote")))
  :resource-base (s-url "http://data.vlaanderen.be/id/concept/Fractietype/")
  :features '(include-uri)
  :on-path "fractietypes")