defmodule ElixirApp.PetView do
  use ElixirApp.Web, :view

  def render("index.json", %{pets: pets}) do
    %{data: render_many(pets, ElixirApp.PetView, "pet.json")}
  end

  def render("show.json", %{pet: pet}) do
    %{data: render_one(pet, ElixirApp.PetView, "pet.json")}
  end

  def render("pet.json", %{pet: pet}) do
    %{id: pet.id,
      name: pet.name}
  end
end
