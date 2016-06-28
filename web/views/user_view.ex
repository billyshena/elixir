defmodule ElixirApp.UserView do
  use ElixirApp.Web, :view

  def render("index.json", %{users: users}) do
    %{data: render_many(users, ElixirApp.UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, ElixirApp.UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      fullname: user.fullname,
      email: user.email,
      age: user.age}
  end
end
