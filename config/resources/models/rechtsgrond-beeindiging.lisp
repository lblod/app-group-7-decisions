(define-resource rechtsgrond-beeindiging ()
  :class (s-prefix "mandaat:RechtsgrondBeeindiging")
  :properties `((:buitenwerkingtreding :date ,(s-prefix "eli:date_no_longer_in_force"))
              (:inwekingtreding :date ,(s-prefix "eli:first_date_entry_in_force"))
              (:type-document :uri-set ,(s-prefix "eli:type_document")))
  :has-many `((mandataris :via ,(s-prefix "mandaat:isOntslagenDoor")
                          :inverse t
                          :as "bekrachtigt-ontslagen-van"))
  :resource-base (s-url "http://data.lblod.info/id/rechtsgronden-beeindiging/")
  :features '(include-uri)
  :on-path "rechtsgronden-beeindiging")