defmodule Debug do
  def traditional do
    [1,2,3]
    |> IO.inspect(label: "antes")
    |> Enum.map(&(&1 *2))
    |> IO.inspect(label: "despues")
    |> Enum.sum
  end


  def with_inspect_vars(a, b, c) do
    IO.inspect binding()
    "hola"
  end

  def with_debug(a,b,c) do
    var = "hola 3"
    require IEx; IEx.pry
    hello = 2
  end
end
