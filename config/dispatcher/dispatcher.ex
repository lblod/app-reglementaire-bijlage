defmodule Dispatcher do
  use Matcher
  define_accept_types [
    html: [ "text/html", "application/xhtml+html" ],
    json: [ "application/json", "application/vnd.api+json" ],
    sparql: [ "application/sparql-results+json" ],
  ]

   define_layers [ :api_services, :api, :frontend, :not_found ]

  @any %{}
  @json %{ accept: %{ json: true } }
  @html %{ accept: %{ html: true } }

  #
  # Run `docker-compose restart dispatcher` after updating
  # this file.

  #######################################################################
  # domain.json                                                         #
  #######################################################################

  match "/code-lists/*path", %{ accept: %{json: true}, layer: :api} do
    Proxy.forward conn, path, "http://cache/code-lists/"
  end

  match "/concept-schemes/*path", %{ accept: %{json: true}, layer: :api} do
    Proxy.forward conn, path, "http://cache/concept-schemes/"
  end

  match "/skos-concepts/*path", %{ accept: %{json: true}, layer: :api} do
    Proxy.forward conn, path, "http://cache/skos-concepts/"
  end

  match "/concepts/*path", %{ accept: %{json: true}, layer: :api} do
    Proxy.forward conn, path, "http://cache/concepts/"
  end

  match "/templates/*path" do
    Proxy.forward conn, path, "http://cache/templates/"
  end

  match "/template-versions/*path" do
    Proxy.forward conn, path, "http://cache/template-versions/"
  end

  match "/regulatory-attachment-templates/*path" do
    Proxy.forward conn, path, "http://cache/regulatory-attachment-templates/"
  end

  match "/decision-templates/*path" do
    Proxy.forward conn, path, "http://cache/decision-templates/"
  end

  match "/snippet-lists/*path", %{ accept: %{json: true}, layer: :api} do
    Proxy.forward conn, path, "http://cache/snippet-lists/"
  end

  match "/snippets/*path", %{ accept: %{json: true}, layer: :api} do
    Proxy.forward conn, path, "http://cache/snippets/"
  end

  match "/snippet-versions/*path", %{ accept: %{json: true}, layer: :api} do
    Proxy.forward conn, path, "http://cache/snippet-versions/"
  end

  get "/tasks/*path", %{ accept: %{json: true}, layer: :api} do
    Proxy.forward conn, path, "http://cache/tasks/"
  end

  get "/jobs/*path", %{ accept: %{json: true}, layer: :api} do
    Proxy.forward conn, path, "http://cache/jobs/"
  end

  get "/job-errors/*path", %{ accept: %{json: true}, layer: :api} do
    Proxy.forward conn, path, "http://cache/job-errors/"
  end

  get "/results/*path", %{ accept: %{json: true}, layer: :api} do
    Proxy.forward conn, path, "http://cache/results/"
  end


  get "/data-containers/*path", %{ accept: %{json: true}, layer: :api} do
    Proxy.forward conn, path, "http://cache/data-containers/"
  end
  
  get "/archives/*path", %{ accept: %{json: true}, layer: :api} do
    Proxy.forward conn, path, "http://cache/archives/"
  end

  post "/publish-template/*path", %{ accept: %{json: true}, layer: :api} do
    Proxy.forward conn, path, "http://publisher/publish-template/"
  end

  post "/snippet-list-publication-tasks/*path", %{ accept: %{json: true}, layer: :api} do
    Proxy.forward conn, path, "http://publisher/snippet-list-publication-tasks/"
  end



  match "/codex/sparql/*path" do
    forward conn, path, "http://codex-proxy/sparql/"
  end

  options "/vendor-proxy/*path", _ do
    conn
    |> Plug.Conn.put_resp_header( "access-control-allow-headers", "content-type,accept" )
    |> Plug.Conn.put_resp_header( "access-control-allow-methods", "*" )
    |> send_resp( 200, "{ \"message\": \"ok\" }" )
  end

  match "/vendor-proxy/*path" do
    forward conn, path, "http://vendor-proxy/"
  end
  #######################################################################
  # editor.json                                                         #
  #######################################################################

  match "/editor-documents/*path" do
    forward conn, path, "http://cache/editor-documents/"
  end

  match "/editor-document-folders/*path" do
    forward conn, path, "http://cache/editor-document-folders/"
  end

  match "/document-containers/*path" do
    forward conn, path, "http://cache/document-containers/"
  end

  match "/administrative-units/*path" do
    forward conn, path, "http://cache/administrative-units/"
  end

  #######################################################################
  # FILES                                                               #
  #######################################################################

  get "/files/:id/download", %{ layer: :api} do
    Proxy.forward conn, [], "http://file/files/" <> id <> "/download"
  end
  get "/files/*path", %{ accept: %{json: true}, layer: :api} do
    Proxy.forward conn, path, "http://cache/files/"
  end
  patch "/files/*path", %{ accept: %{json: true}, layer: :api} do
    Proxy.forward conn, path, "http://cache/files/"
  end
  post "/files/*path", %{ accept: %{upload: true}, layer: :api} do
    Proxy.forward conn, path, "http://file/files/"
  end
  delete "/files/*path", %{ accept: %{json: true}, layer: :api} do
    Proxy.forward conn, path, "http://file/files/"
  end

  #######################################################################
  # Template Export Service                                             #
  #######################################################################
  post "/export-templates" do
    Proxy.forward conn, [], "http://template-export/export"
  end

  #######################################################################
  # SPARQL                                                              #
  #######################################################################

  match "/sparql", %{ layer: :api, accept: %{ sparql: true } } do
    forward conn, [], "http://sparql-cache/sparql"
  end

  match "/raw-sparql", %{ layer: :api, accept: %{ sparql: true } } do
    forward conn, [], "http://database:8890/sparql"
  end

  #######################################################################
  # AUTH                                                                #
  #######################################################################

  match "/mock/sessions/*path" do
    forward conn, path, "http://mocklogin/sessions/"
  end

  match "/sessions/*path" do
    forward conn, path, "http://login/sessions/"
  end

  match "/users/*path" do
    forward conn, path, "http://cache/users/"
  end

  match "/accounts/*path" do
    forward conn, path, "http://cache/accounts/"
  end

  match "/groups/*path" do
    forward conn, path, "http://cache/groups/"
  end

  post "/remote-login/*path" do
    forward conn, [], "http://remotelogin/remote-login"
  end


  #######################################################################
  # FRONTEND                                                            #
  #######################################################################

  match "/assets/*path", %{ layer: :api } do
    Proxy.forward conn, path, "http://frontend/assets/"
  end

  match "/@appuniversum/*path", %{ layer: :api } do
    Proxy.forward conn, path, "http://frontend/@appuniversum/"
  end

  match "/*path", %{ accept: [:html], layer: :api } do
    Proxy.forward conn, [], "http://frontend/index.html"
  end

  match "/*_path", %{ layer: :frontend } do
    Proxy.forward conn, [], "http://frontend/index.html"
  end



  # match "/*_", %{ last_call: true } do
  #   send_resp( conn, 404, "Route not found.  See config/dispatcher.ex" )
  # end
end
