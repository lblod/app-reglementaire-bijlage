;;;;;;;;;;;;;;;;;;;
;;; delta messenger
(in-package :delta-messenger)

(setf *delta-handlers* nil)
(add-delta-logger)
(add-delta-messenger "http://deltanotifier/")

;;;;;;;;;;;;;;;;;
;;; configuration
(in-package :client)
(setf *log-sparql-query-roundtrip* t)
(setf *backend* "http://virtuoso:8890/sparql")

;;;;;;;;;;;;;;;;;
;;; access rights

(in-package :acl)

(defparameter *access-specifications* nil
  "All known ACCESS specifications.")

(defparameter *graphs* nil
  "All known GRAPH-SPECIFICATION instances.")

(defparameter *rights* nil
  "All known GRANT instances connecting ACCESS-SPECIFICATION to GRAPH.")

(type-cache::add-type-for-prefix "http://mu.semte.ch/sessions/" "http://mu.semte.ch/vocabularies/session/Session")

(define-prefixes
    :foaf "http://xmlns.com/foaf/0.1/"
    :besluit "http://data.vlaanderen.be/ns/besluit#"
    :skos "http://www.w3.org/2004/02/skos/core#"
    :mobiliteit "https://data.vlaanderen.be/ns/mobiliteit#"
    :gn "http://data.lblod.info/vocabularies/gelinktnotuleren/"
    :nfo "http://www.semanticdesktop.org/ontologies/2007/03/22/nfo#"
    :say "https://say.data.gift/ns/"

  :lblodmow "http://data.lblod.info/vocabularies/mobiliteit/"
  :dct "http://purl.org/dc/terms/"
  
  :org "http://www.w3.org/ns/org#"
  
  :vs "http://www.w3.org/2003/06/sw-vocab-status/ns#"
  :ext "http://mu.semte.ch/vocabularies/ext/"
  :cidoc "http://www.cidoc-crm.org/cidoc-crm/"
  :qudt "http://qudt.org/schema/qudt/"
  
  
  :rdfs "http://www.w3.org/2000/01/rdf-schema#"
  :sh "http://www.w3.org/ns/shacl#"
  :tribont "https://w3id.org/tribont/core#"
  :musession "http://mu.semte.ch/vocabularies/session/"
)

(define-graph public ("http://mu.semte.ch/graphs/public")
    ("foaf:OnlineAccount" -> _)
    ("foaf:Person" -> _)
    ("besluit:Bestuurseenheid" -> _)
    ("skos:Concept" -> _)
    ("skos:ConceptScheme" -> _)
    ("mobiliteit:Codelist" -> _)
    ("nfo:FileDataObject" -> _)
    ("gn:TemplateVersie" -> _)
    ("gn:Template" -> _)
    ("gn:ReglementaireBijlageTemplate" -> _)
    ("gn:BesluitTemplate" -> _)
    ("say:SnippetList" -> _)
    ("say:Snippet" -> _)
    ("say:SnippetVersion" -> _)
)

(define graph organizations ()
    ("foaf:OnlineAccount" -> _)
    ("foaf:Person" -> _)
    ("ext:EditorDocumentFolder" -> _)
    ("ext:EditorDocumentStatus" -> _)
    ("ext:EditorDocument" -> _)
    ("ext:Reglement" -> _)
    ("ext:DocumentContainer" -> _)
    ("ext:Concept" -> _)
    ("ext:Mapping" -> _)
)
