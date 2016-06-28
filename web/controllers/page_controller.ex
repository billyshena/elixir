defmodule ElixirApp.PageController do
  use ElixirApp.Web, :controller

  def index(conn, _params) do
    conn
  |> send_resp(201, "loaderio-8bb397278d712441ad9d9dab8f444bab")
  end
end
