defmodule CursoElixir.Repo do
  use Ecto.Repo,
    otp_app: :curso_elixir,
    adapter: Ecto.Adapters.Postgres
end
