defmodule ElixirApp.Router do
  use ElixirApp.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ElixirApp do
    pipe_through :browser # Use the default browser stack

    get "/loaderio-8bb397278d712441ad9d9dab8f444bab.html", PageController, :index
  end

  # Other scopes may use custom stacks.
   scope "/api", ElixirApp do
     pipe_through :api
     resources "/users", UserController, except: [:new, :edit]
     resources "/pets", PetController, except: [:new, :edit]
   end
end
