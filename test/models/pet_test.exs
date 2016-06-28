defmodule ElixirApp.PetTest do
  use ElixirApp.ModelCase

  alias ElixirApp.Pet

  @valid_attrs %{name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Pet.changeset(%Pet{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Pet.changeset(%Pet{}, @invalid_attrs)
    refute changeset.valid?
  end
end
