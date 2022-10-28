(in-package :mu-cl-resources)

(defparameter *include-count-in-paginated-responses* t
  "when non-nil, all paginated listings will contain the number
   of responses in the result object's meta.")

;; reading in the domain.json
(read-domain-file "domain.json")
(read-domain-file "auth.json")
(read-domain-file "editor.json")
(read-domain-file "goverment.json")