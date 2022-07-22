alias Acl.Accessibility.Always, as: AlwaysAccessible
alias Acl.GraphSpec.Constraint.Resource, as: ResourceConstraint
alias Acl.GraphSpec.Constraint.ResourceFormat, as: ResourceFormatConstraint
alias Acl.GraphSpec, as: GraphSpec
alias Acl.GroupSpec, as: GroupSpec
alias Acl.GroupSpec.GraphCleanup, as: GraphCleanup
alias Acl.Accessibility.ByQuery, as: AccessByQuery

defmodule Acl.UserGroups.Config do
  def user_groups do
    # These elements are walked from top to bottom.  Each of them may
    # alter the quads to which the current query applies.  Quads are
    # represented in three sections: current_source_quads,
    # removed_source_quads, new_quads.  The quads may be calculated in
    # many ways.  The useage of a GroupSpec and GraphCleanup are
    # common.
    [
      # // PUBLIC
      %GroupSpec{
        name: "public",
        useage: [:read, :write],
        access: %AlwaysAccessible{},
        graphs: [ %GraphSpec{
                    graph: "http://mu.semte.ch/graphs/public",
                    constraint: %ResourceConstraint{
                      resource_types: [
                        "http://xmlns.com/foaf/0.1/OnlineAccount", # added here to fetch them for mock-login
                        "http://xmlns.com/foaf/0.1/Person",  # added here to fetch them for mock-login
                        "http://data.vlaanderen.be/ns/besluit#Bestuurseenheid",
                        "http://www.w3.org/2004/02/skos/core#"
                      ]
                    } },
                    %GraphSpec{
                    graph: "http://mu.semte.ch/graphs/sessions",
                    constraint: %ResourceFormatConstraint{
                      resource_prefix: "http://mu.semte.ch/sessions/"
                    } } ] },
      %GroupSpec{
        name: "org-wf",
        useage: [:read, :write, :read_for_write],
        access: %AccessByQuery{
          vars: ["session_group"],
          query: "PREFIX ext: <http://mu.semte.ch/vocabularies/ext/>
                  PREFIX mu: <http://mu.semte.ch/vocabularies/core/>
                  SELECT DISTINCT ?session_group WHERE {
                    <SESSION_ID> ext:sessionGroup/mu:uuid ?session_group;
                                 ext:sessionRole \"beheerder\".
                    }" },
        graphs: [ %GraphSpec{
                    graph: "http://mu.semte.ch/graphs/organizations/",
                    constraint: %ResourceConstraint{
                      resource_types: [
                        "http://xmlns.com/foaf/0.1/OnlineAccount",
                        "http://xmlns.com/foaf/0.1/Person",
                        "http://mu.semte.ch/vocabularies/ext/EditorDocumentFolder",
                        "http://mu.semte.ch/vocabularies/ext/EditorDocumentStatus",
                        "http://mu.semte.ch/vocabularies/ext/EditorDocument",
                        "http://mu.semte.ch/vocabularies/ext/Reglement",
                        "http://mu.semte.ch/vocabularies/ext/DocumentContainer",
                        "http://www.w3.org/2004/02/skos/core#Concept",
                        "http://www.w3.org/2004/02/skos/core#ConceptScheme",
                        "http://mu.semte.ch/vocabularies/ext/Concept",
                        "http://mu.semte.ch/vocabularies/ext/Mapping",
                        "http://data.lblod.info/vocabularies/mobiliteit/Codelist",

                      ] } } ] },

      # // CLEANUP
      #
      %GraphCleanup{
        originating_graph: "http://mu.semte.ch/application",
        useage: [:write],
        name: "clean"
      }
    ]
  end
end
