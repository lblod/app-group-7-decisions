(define-resource editor-document-folder ()
  :class (s-prefix "ext:EditorDocumentFolder")
  :properties `((:name :string ,(s-prefix "ext:EditorDocumentFolderName")))
  :resource-base (s-url "http://data.lblod.info/editor-document-folders/")
  :features `(no-pagination-defaults)
  :on-path "editor-document-folders")