defmodule Ejercicios4 do


  def binario_main(n) do
       1..n |> Enum.map(fn x -> binarios(x) end) |> Enum.join(" \n") |> IO.puts

  end
  defp binarios(_n,  _i \\ 0 ,  _out \\ "")
  defp binarios(n, i ,  out ) when  i == n, do: out
  defp binarios(n, i , out) when  i < n do
     i = i + 1
     r = rem(i,2)
     out = "#{r}" <> out
     binarios(n ,i , out)
  end




  def sum(), do: {:error, "debe ingresar una lista de numeros"}
  def sum(obj) when is_list(obj) == false, do: {:error, "debe ingresar una lista de numeros"}
  def sum(_list,_res \\ 0)
  def sum([],res), do: res
  def sum([head | tail], res) do
    res =  res + head
    sum(tail, res)
  end


  def reverse() , do: {:error, "debe ingresar una lista de numeros"}
  def reverse(obj) when is_list(obj) == false, do: {:error, "debe ingresar una lista de numeros"}
  def reverse(_list ,_out \\ [])
  def reverse([],out), do: out
  def reverse([head | tail],out) do
    out = [head] ++ out
    reverse(tail, out)
  end


  def ascendant() , do: {:error, "debe ingresar una lista de numeros"}
  def ascendant(_list, _out \\ true)
  def ascendant([], out),  do: out
  def ascendant([head | tail], out)  do
    if(length(tail) > 0) do
      out = out && (head <= hd tail)
      ascendant(tail, out)
    else
     out
    end
  end





end
