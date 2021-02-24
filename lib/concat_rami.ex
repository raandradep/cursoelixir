defmodule ConcatRami do
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
    cond do
      caracter == head -> true
      true -> search_list(tail, caracter)
    end
  end

  def unir(str_in1, str_in2) do
    lista_in1 = String.codepoints(str_in1)
    lista_in2 = String.codepoints(str_in2)
    unir_r(lista_in1, lista_in2)
  end

  defp unir_r(_, _, _new_str \\ "")
  defp unir_r([], [], new_str), do: new_str

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
    |> Enum.chunk_by(& &1)
    |> Enum.map(&validar_length(&1))
    |> Enum.reduce(&(&2 <> &1))
  end

  defp validar_length(list) do
    {head, tam} = {hd(list), length(list)}

    cond do
      tam == 1 -> "#{head}"
      true -> "#{head}#{tam}"
    end
  end

  def intercalar_dos_caracteres(strin) do
    strin
    |> String.codepoints()
    |> Enum.chunk_every(2)
    |> Enum.map(&Ejercicios4.reverse(&1))
    |> List.to_string()
  end

  def super_digit(num) do
    lista = String.codepoints(to_string(num)) |> Enum.map(&String.to_integer(&1))
    suma_recursiva(lista)
  end

  defp suma_recursiva(lista) when length(lista) == 1, do: IO.inspect(lista, label: "-->")

  defp suma_recursiva(lista) when length(lista) > 1 do
    IO.inspect(lista, label: "-->")
    num = Enum.sum(lista)
    lista = String.codepoints(to_string(num)) |> Enum.map(&String.to_integer(&1))
    suma_recursiva(lista)
  end

  def intercepcion(lista1, lista2) do
    cond do
      length(lista2) > length(lista1) ->  intercepcion_r(lista2, lista1)
      true -> intercepcion_r(lista1, lista2)
    end
  end

  def intercepcion_r(_lista1, _lista2, _pos \\ 0, new_list \\ [])
  def intercepcion_r([], _lista2, _pos, new_list), do: new_list
  def intercepcion_r(_lista1, [],_poS, new_list), do: new_list
  def intercepcion_r([head | tail], lista,pos , new_list)  do
    cond do
      search_list(lista, head) -> intercepcion_r(tail, lista, pos + 1, new_list)
      true -> intercepcion_r(tail, lista, pos + 1,  new_list ++ [head])
    end

  end



  def ordenar_letras_abc(strin) do
    strin
    |> String.replace("c", "c|")        |> IO.inspect(label: "replace -->")
    |> String.split("|")                |> IO.inspect(label: "split -->")
    |> Enum.map(&String.codepoints(&1)) |> IO.inspect(label: "codepoints & map -->")
    |> Enum.map(&Enum.sort(&1))         |> IO.inspect(label: "sort & map -->")
    |> Enum.join()
  end



end
