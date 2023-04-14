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

  ###############
  # SPARQL
  ###############

 match "/sparql", %{ layer: :api, accept: %{ sparql: true } } do
    forward conn, [], "http://sparql-cache/sparql"
  end

 match "/raw-sparql", %{ layer: :api, accept: %{ sparql: true } } do
   forward conn, [], "http://database:8890/sparql"
 end

   ###############################################################
  # domain.json
  ###############################################################

  match "/regulatory-statements/*path" do
    forward conn, path, "http://cache/regulatory-statements/"
  end

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

  #########
  # login
  ########
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

  match "/published-regulatory-attachment-containers/*path" do
    Proxy.forward conn, path, "http://cache/published-regulatory-attachment-containers/"
  end

  match "/published-regulatory-attachments/*path" do
    Proxy.forward conn, path, "http://cache/published-regulatory-attachments/"
  end


  match "/regulatory-attachment-publication-tasks/*path", %{ accept: %{json: true}, layer: :api} do
    Proxy.forward conn, path, "http://publisher/regulatory-attachment-publication-tasks/"
  end

  #########
  # files
  ########

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


  ###############################################################
  # frontend layer
  ###############################################################

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

  match "/codex/sparql/*path" do
    forward conn, path, "http://codex-proxy/sparql/"
  end

  # match "/*_", %{ last_call: true } do
  #   send_resp( conn, 404, "Route not found.  See config/dispatcher.ex" )
  # end
end
