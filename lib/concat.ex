defmodule Concat do
  def reduction(str) do
    lista_caracteres = String.codepoints(str)
    reduction_r(lista_caracteres)
  end

  defp reduction_r(_lista, _nueva_lista \\ [])
  defp reduction_r([], nueva_lista), do: nueva_lista |> Enum.join("")

  defp reduction_r([head | tail], nueva_lista) do
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

  def unir(str_in1, str_in2) do
    lista_in1 = String.codepoints(str_in1)
    lista_in2 = String.codepoints(str_in2)
    unir_r(lista_in1, lista_in2)
  end

  defp unir_r(_, _, _new_str \\ "")
  defp unir_r([], [], new_str), do: IO.puts(new_str)

  defp unir_r([], [head2 | tail2], new_str) do
    new_str = new_str <> "" <> head2
    unir_r([], tail2, new_str)
  end

  defp unir_r([head | tail], [], new_str) do
    new_str = new_str <> head <> ""
    unir_r(tail, [], new_str)
  end

  defp unir_r([head | tail], [head2 | tail2], new_str) do
    new_str = new_str <> head <> head2
    unir_r(tail, tail2, new_str)
  end


  def compression(str_in) do
    lista_caracteres = String.codepoints(str_in)
    lista_caracteres
    |> Enum.chunk_by(&(&1))
    |> Enum.map(&(validar_length(&1)))
    |> Enum.reduce(&(&2<>&1))
  end

  defp validar_length(list) do
    {head,tam} =  { hd(list), length(list)}
    cond do
      tam == 1 -> "#{head}"
      true ->     "#{head}#{tam}"
    end
  end

end
