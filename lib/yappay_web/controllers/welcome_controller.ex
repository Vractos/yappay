defmodule YappayWeb.WelcomeController do
  use YappayWeb, :controller

  def index(conn, _params) do
    text(conn, "Welcome to Yap Pay API")
  end
end
