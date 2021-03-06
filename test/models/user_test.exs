defmodule ElixirApp.UserTest do
  use ElixirApp.ModelCase

  alias ElixirApp.User

  @valid_attrs %{age: 42, email: "some content", fullname: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
