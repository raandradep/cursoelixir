defmodule StringCompression do
  @spec compression(String.t()) :: String.t()
  def compression(string) do
    string
    |> String.codepoints()
    |> IO.inspect(label: "1 ->>>")
    |> Enum.chunk_by(fn x -> x end)
    |> IO.inspect(label: "2 ->>>")
    |> Enum.map(fn x ->
      "#{List.first(x)}" <> "#{if Enum.count(x) == 1, do: "", else: Enum.count(x)}"
    end)
    |> IO.inspect(label: "3 ->>>")
    |> List.to_string()
    |> IO.inspect(label: "4 ->>>")

    # List.to_string(
    #   Enum.map(
    #     Enum.chunk_by(
    #       String.codepoints(string),
    #        fn x -> x end),
    #         fn x -> "#{List.first(x)}" <> "#{if Enum.count(x) == 1, do: "", else: Enum.count(x)}"
    #   end)
    # )


  end

  def function() do
    a =2
    if 3 > 3 do
      a = 1000
      IO.puts("aqui no entra")
    else
      a = 9000
      IO.puts("aqui si entra")
    end

    a # 2
  end

  def function2() do
    valor = if 3 > 3 do
      IO.puts("aqui no entra")
      1000
    else
      IO.puts("aqui si entra")
      9000
    end
    {:ok, valor}
  end

  def function2!() do
   if 3 > 3 do
    {"aqui no entra", 1000}
  else
      list = Enum.map(1..100_000, &(&1 +2))
      IO.inspect(list, limit: :infinity)
      {"aqui si entra", 9000}
    end
  end

  def function2?(), do: 3 > 3

end
