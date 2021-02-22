defmodule ListComprehension do
  def lis1() do
    # for n <- [1,2,3,4] do
    #   n*n
    # end
    # for n <- 1..4, do: n *n

    values = [good: 1,good: 2, bad: 3, good: 4]
    # values = [{:good, 1}, {:good, 2}, {:bad, 3}, {:good, 4}]
    for {:good, numero} <- values, do: {:good, numero + 10}

  end

  def list2() do

    multiplos_3? = fn(n) -> rem(n, 3) == 0 end

    for n <- 0..5, multiplos_3?.(n), do: n*n
  end

  def list3() do
    # for i
    #   for j

    for i <- [:a, :b, :c, :d], j <- [1,2,3,4], do: {i, j}
  end

  def list4() do
    map = %{"a" => 1, "b" => 2}
    for {key, value} <- map, into: %{}, do: {key, value * 10}
  end

  def list5() do
    map2 = %{a: 1, b: 2}
    for {key, value} <- map2, into: [], do: {key, value * 10}
  end

  def list7() do
    for c <- [72, 101, 108, 108, 111], into: "", do: <<c>> #Hello
  end

  def list6() do

    multiplos_3? = fn(n) -> rem(n, 3) == 0 end
    suma = fn(n) -> n + 10 end
    # multiplica = fn(n) -> n * n end
    # for n <- 0..5, multiplos_3?.(n), n > 1, do:  suma.(n)
    for n <- 0..5, multiplos_3?.(n), do: IO.puts(suma.(n))
  end

  def list8() do
    import Integer
    for n <- 1..100, is_even(n), rem(n, 3) == 0 and n > 50, do: IO.puts(n)
  end

end
