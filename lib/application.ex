defmodule CursoElixir.Application do #Application
use Application
  def start(_type, _args) do


    children = [
      Cron.Programacion,
      CursoElixir.Repo,
    ]

    opts = [strategy: :one_for_one, name: CursoElixir.Supervisor]
    Supervisor.start_link(children, opts)
  end

end
