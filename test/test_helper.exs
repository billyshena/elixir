ExUnit.start

Mix.Task.run "ecto.create", ~w(-r ElixirApp.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r ElixirApp.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(ElixirApp.Repo)

