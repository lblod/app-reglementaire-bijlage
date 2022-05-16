defmodule Dispatcher do
  use Matcher
  define_accept_types [
    html: [ "text/html", "application/xhtml+html" ],
    json: [ "application/json", "application/vnd.api+json" ]
  ]

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
  
  match "/reglementen/*path" do
    forward conn, path, "http://resource/reglementen/"
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

  match "/gebruikers/*path" do
    forward conn, path, "http://resource/gebruikers/"
  end

  match "/accounts/*path" do
    forward conn, path, "http://resource/accounts/"
  end

  post "/remote-login/*path" do
    forward conn, [], "http://remotelogin/remote-login"
  end

  match "/*_", %{ last_call: true } do
    send_resp( conn, 404, "Route not found.  See config/dispatcher.ex" )
  end
end
