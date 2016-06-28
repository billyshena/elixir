defmodule ElixirApp.PageController do
  use ElixirApp.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
