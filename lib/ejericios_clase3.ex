defmodule Ejercicios3 do




  def sumatoria(n) when is_binary(n),  do: {:error,"valor de entrada debe ser entero"}
  def sumatoria(n) when n < 1,  do: {:error,"numeros de entrada debe ser mayor o igual a 1"}
  def sumatoria(n) when is_number(n) do
    #1..n |> Enum.map(fn s -> s end) |> Enum.reduce(fn a, b -> a + b end)
    1..n |> Enum.map(&(&1)) |> Enum.reduce(&(&1 + &2))
  end


  def sumatoria_r(res \\ 1, n) do
    res = res + 1;
    if res <= n do
      sumatoria_r(res,n)
    end
  end



  def fibo(n) when is_binary(n),  do: {:error,"valor de entrada debe ser entero"}
  def fibo(n) when n > 2, do: fibo(n - 1) + fibo(n - 2)
  def fibo(n) when n <= 2, do: 1

  def fibo_opt(n) when is_integer(n) and n > 0, do: fibo_p(n, 0, 1)
  defp fibo_p(1, _ , b), do: b
  # defp fibo_p(_n, a, b), do: fibo_p(_n  -1, b, a + b )


  def f(a, b) when is_binary(a) or is_binary(b),  do: {:error,"valor de las entradas debe ser entero"}
  def f(a, b) do
    cond do
      a == 0 or b == 0 -> 0
      a == b -> f(a - 1, b - 1) + 2 * a - 1
      a > b -> f(a - b, b) + f(b, b)
      a < b -> f(a, a) + f(b - a, a)
    end
  end



  def gcd(a, b) when is_binary(a) or is_binary(b),  do: {:error,"valor de las entradas debe ser entero"}
  def gcd(a, b) do
    cond do
      b == 0 -> a |> IO.inspect(label: "  b == 0")
      b > a -> gcd(b, a) |> IO.inspect(label: " b > a")
      true -> gcd(a - b, b) |> IO.inspect(label: "true")
    end
  end

end
