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
    :ext "http://mu.semte.ch/vocabularies/ext/"
    :task "http://redpencil.data.gift/vocabularies/tasks/"
    :oslc "http://open-services.net/ns/core#"
    :cogs "http://vocab.deri.ie/cogs#"
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

(define-graph organizations ("http://mu.semte.ch/graphs/organizations/")
    ("foaf:OnlineAccount" -> _)
    ("foaf:Person" -> _)
    ("ext:EditorDocumentFolder" -> _)
    ("ext:EditorDocumentStatus" -> _)
    ("ext:EditorDocument" -> _)
    ("ext:Reglement" -> _)
    ("ext:DocumentContainer" -> _)
    ("ext:Concept" -> _)
    ("ext:Mapping" -> _)
    ("task:Task" -> _)
    ("oslc:Error" -> _)
    ("cogs:Job" -> _)
    ("nfo:DataContainer" -> _)
    ("nfo:Archive" -> _)
)

(defparameter *access-query*
  "PREFIX ext: <http://mu.semte.ch/vocabularies/ext/>
    PREFIX mu: <http://mu.semte.ch/vocabularies/core/>
    SELECT DISTINCT ?session_group WHERE {
    <SESSION_ID> ext:sessionGroup/mu:uuid ?session_group;
                    ext:sessionRole ?role.
    FILTER(?role in (\"ABBLBLODGebruiker-Superadmin\",\"ABBLBLODGebruiker-Beheerder\",\"ABBLBLODGebruiker-Gebruiker\"))
    }"
    "Access query for a logged in user"
)

(supply-allowed-group "org-wf"
  :parameters ("session_group")
  :query *access-query*
)

(grant (read write)
       :to-graph  organizations
       :for-allowed-group "org-wf")


(supply-allowed-group "public")

(grant (read)
       :to-graph public
       :for-allowed-group "public")


(supply-allowed-group "logged-in-user"
  :parameters ()
  :query *access-query*
)

(grant (write)
       :to-graph  public
       :for-allowed-group "logged-in-user")