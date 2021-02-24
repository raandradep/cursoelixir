use Mix.Config

#config :curso_elixir, CursoElixir.Repo,
  # database: "curso_elixir_repo",
  # username: "postgres",
  # password: "postgres",
  # hostname: "localhost"


#config :curso_elixir, ecto_repos: [CursoElixir.Repo]


config :logger, level: :debug



config :curso_elixir, Cron.Programacion,
  jobs: [
    # cada segundo
   #  {{:extended, "* * * * *"},      {Tarea.Mensaje, :send, ["Hola",1]}},
   # {{:extended, "1 * * * *"},       {ExplodingTopics.Manage, :add_topic, []}},
  ]
