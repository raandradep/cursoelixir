defmodule CusoElixir.Application do
  use Application

  @impl true
  def start(_type, _args) do
    # Although we don't use the supervisor name below directly,
    # it can be useful when debugging or introspecting the system.
    children = [
      {CursoElixir.Registry, name: CursoElixir.Registry}
    ]

    opts = [strategy: :one_for_one, name: CusoElixir.Supervisor]

    Supervisor.start_link(children, opts) # {:ok, pid}
  end
end
