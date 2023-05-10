(define-resource contact-punt ()
  :class (s-prefix "schema:ContactPoint")
  :properties `((:aanschrijfprefix :language-string-set ,(s-prefix "vcard:honorific-prefix"))
                (:email :string ,(s-prefix "schema:email"))
                (:fax :string ,(s-prefix "schema:faxNumber"))
                (:naam :string ,(s-prefix "foaf:name"))
                (:website :url ,(s-prefix "foaf:page"))
                (:telefoon :string ,(s-prefix "schema:telephone")))
  :has-one `((adres :via ,(s-prefix "locn:address")
                    :as "adres"))
  :features '(include-uri)
  :resource-base (s-url "http://data.lblod.info/id/contact-punten/")
  :on-path "contact-punten")
