defmodule CursoElixir.MixProject do
  use Mix.Project

  def project do
    [
      app: :curso_elixir,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {CursoElixir.Application, []},
      extra_applications: [:logger , :httpoison]


    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto_sql, "~> 3.4"},
      {:postgrex, ">= 0.0.0"},
      {:poison, "~> 2.0"},
      {:httpoison, "~> 1.8"},
      {:quantum, "~> 3.0"},
      {:floki, "~> 0.30.0"}
    ]
  end
end
