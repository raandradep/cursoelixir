defmodule StringCompressioLight do
  @moduledoc """
  This function return string compression

  ## Example

      iex> StringCompressioLight.compression("aaabbbccc")
      "a3b3c3"

  """

  @doc """
  Calculate Compression String

  
  """
  @spec compression(String.t()) :: String.t()
  def compression(string) do
    list_text = string
    |> String.trim
    |> String.codepoints
    |> IO.inspect(label: "list_text-->")

    #IO.inspect(list_text, label: "list_text-->")

    do_compress("","", 0, list_text)
  end

  defp do_compress(acc, character, count, list_text) do
    case list_text do
      [head_first | tail_first] when head_first == character ->
        IO.puts("Entro Repetido y le sumamos 1 a #{count}")
        IO.inspect(head_first, label: "head_first de la linea 16-->")
        IO.inspect(character, label: "character de la linea 16-->")
        do_compress(acc, character, count + 1, tail_first)
      [h | tail_rest] ->
        IO.puts("Entro y encontro un caracter diferente e inicializamos el nuevo count con 1")
        IO.inspect(h, label: "character de la linea 20-->")
        IO.inspect(acc, label: "acumulador de la linea 21-->")
        IO.inspect(concat(character, count), label: "concat de la linea 22-->")

        do_compress(acc <> concat(character, count), h, 1, tail_rest)
      [] ->
        IO.inspect(acc, label: "acumulador de la linea 26-->")
        IO.inspect(concat(character, count), label: "concat de la linea 28-->")
        acc <> concat(character, count)
    end
  end

  defp concat(character, count) do
    cond do
      character == "" -> ""
      count == 1 -> character
      count > 1 -> "#{character}#{count}"
      #true
    end
  end

end
