defmodule Dispatcher do
  use Matcher
  define_accept_types [
    html: [ "text/html", "application/xhtml+html" ],
    json: [ "application/json", "application/vnd.api+json" ]
  ]

   define_layers [ :api_services, :api, :frontend, :not_found ]

  @any %{}
  @json %{ accept: %{ json: true } }
  @html %{ accept: %{ html: true } }

  # In order to forward the 'themes' resource to the
  # resource service, use the following forward rule:
  #
  # match "/themes/*path", @json do
  #   Proxy.forward conn, path, "http://resource/themes/"
  # end
  #
  # Run `docker-compose restart dispatcher` after updating
  # this file.
  
  match "/regulatory-statements/*path" do
    forward conn, path, "http://resource/regulatory-statements/"
  end

  match "/editor-documents/*path" do
    forward conn, path, "http://resource/editor-documents/"
  end

  match "/document-containers/*path" do
    forward conn, path, "http://resource/document-containers/"
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
    forward conn, path, "http://resource/users/"
  end

  match "/accounts/*path" do
    forward conn, path, "http://resource/accounts/"
  end

  match "/groups/*path" do
    forward conn, path, "http://resource/groups/"
  end

  post "/remote-login/*path" do
    forward conn, [], "http://remotelogin/remote-login"
  end

  ###############################################################
  # frontend layer
  ###############################################################

  match "/authorization/callback/*_path", %{ accept: [:html], layer: :api } do
      Proxy.forward conn, [], "http://frontend/torii/redirect.html"
  end

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
