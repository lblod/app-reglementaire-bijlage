(in-package :mu-cl-resources)

(defparameter *include-count-in-paginated-responses* t
  "when non-nil, all paginated listings will contain the number
   of responses in the result object's meta.")

(defparameter *supply-cache-headers-p* t)
(defparameter *cache-model-properties* t)
(defparameter *cache-count-queries* t)

;; reading in the domain.json
(read-domain-file "generic.json")
(read-domain-file "domain.json")
(read-domain-file "auth.json")
(read-domain-file "editor.json")
(read-domain-file "goverment.json")