defmodule CursoElixir do
  @personas [
    %{firstname: "Carlos", lastname: "Perez"},
    %{firstname: "Pepito", lastname: "Perez"},
    %{firstname: "Juan", lastname: "Perez"}
  ]


  @numeros [1, 2, 3, 4, 5]
  def buscar([]), do: "No hay mas Items"

  def buscar([%{firstname: nombre, lastname: apellido} | tail] = _list \\ @personas) do
    IO.puts("Hola, mi nombre es #{nombre} #{apellido}")
    buscar(tail)
  end

  # def buscar([]), do: "No hay mas items"
  # def buscar([%{firstname: firstname, lastname: lastname} | tail] = list \\ @personas) do
  #   IO.inspect(tail, label: "-->")
  #   IO.puts("Hola mi nombre es #{firstname} #{lastname}")
  #   buscar(tail)
  # end

  def hello do
    :world
  end

  def sumar([head | tail] \\ @numeros, suma \\ 0) do
    resultado = suma + head
    sumar(tail, resultado)
  end

  def sumar([], suma), do: suma

  def generico([], suma, _funcion), do: suma

  def generico([head | tail] \\ @numeros, suma \\ 0, funcion) do
    resultado = funcion.(suma, head)
    generico(tail, resultado, funcion)
  end

  def buscarNombres() do
    Enum.map(@personas, fn a ->
      IO.puts("Hola mi nombre es #{a.firstname} y apellido #{a.lastname}")
    end)
  end

  def buscarNumero([], to_search) do
    IO.puts("El numero #{to_search} no fue encontrado")
  end

  def buscarNumero([head | tail], to_search) do
    if head == to_search do
      IO.puts("El numero #{to_search} fue encontrado")
    else
      buscarNumero(tail, to_search)
    end
  end

  # cantidad de elementos de una lista

  def contar_elementos([], contador), do: IO.puts("La lista contiene #{contador} elementos")

  def contar_elementos([head | tail], contador \\ 0) do
    contador = contador + 1
    contar_elementos(tail, contador)
  end

  # lista de strigns los concatene todos

  def concatenar_elementos([], str_out), do: {:ok, str_out}

  def concatenar_elementos([head | _tail], _str_out) when is_number(head) do
    {:error, "la lista contiene numeros"}
  end

  def concatenar_elementos([head | tail], str_out \\ "") when is_binary(head) do
    str_out = str_out <> " " <> head
    concatenar_elementos(tail, str_out)
  end







  # def triangulo_pascal(linea \\ 1, n) when is_number(n)  do
  #   1..n |> Enum.map(fn x -> triangulo_pascal_int(x) end) |> Enum.join(" \n") |> IO.puts
  # end

  # def triangulo_pascal_int(i \\ 1, c \\ 1, linea) when i = linea, do:
  # def triangulo_pascal_int(i \\ 1, c \\ 1, linea) when i < linea do
  #   {val,_} = Integer.parse("#{c}")
  #   IO.puts(val)
  #   c = c * (linea - i) / i
  #   i = i + 1
  #   triangulo_pascal_int(i, c,  linea)

  # end
#   def triangulo_pascal(n) when is_binary(n) do
#     IO.puts("La entrada de la funcion debe ser un valor entero")
#   end
#   def triangulo_pascal(n) when is_number(n) do

#     linea = fn 1..n |> Enum.map(fn i -> triangulo_pascal_int(i) end) |> Enum.join(" ")
#     IO.puts(linea)
#  end

#  def triangulo_pascal_int(linea) do
#    1..linea |> Enum.map(fn l -> l end)
#   # c = c * (linea - i) / i |> round

#  end





  def fibonacci(numero) when is_binary(numero) do
    IO.puts("La entrada de la funcion debe ser un valor entero")
  end
  def fibonacci(numero) do
     if numero < 2 do
       numero
     else
      fibonacci(numero - 2) +  fibonacci(numero - 1)
     end
  end

end
