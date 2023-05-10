(define-resource rdfs-property ()
  :class (s-prefix "rdfs:Property")
  :properties `((:label :string ,(s-prefix "rdfs:label"))
                (:rdfa-type :uri ,(s-prefix "ext:rdfaType")))
  :has-many `((rdfs-class :via ,(s-prefix "ext:rdfsClassProperties")
                     :inverse t
                     :as "domain"))
  :has-one `((rdfs-class :via ,(s-prefix "rdfs:range")
                     :as "range"))
  :resource-base (s-url "http://data.lblod.info/id/rdfs-properties/")
  :features '(include-uri)
  :on-path "rdfs-properties")
