defmodule Concat do
  def reduction(str) do
    lista_caracteres = String.codepoints(str)
    reduction_r(lista_caracteres)
  end

  defp reduction_r(_lista , _nueva_lista \\ [])
  defp reduction_r([], nueva_lista), do: nueva_lista |> Enum.join("")
  defp reduction_r([head | tail] , nueva_lista) do

    existe = search_list(tail, head)
    if existe do
      reduction_r(tail, nueva_lista)
    else
      nueva_lista = nueva_lista ++ [head]
      reduction_r(tail, nueva_lista)
    end
  end

  def search_list([], _caracter), do: false
  def search_list([head | tail], caracter) do
    if(caracter == head) do
      true
    else
      search_list(tail, caracter)
    end
  end
end
