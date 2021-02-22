defmodule CursoElixir.Stucts.User do
  # defstruct name: nil, age: nil
  defstruct [:name, :age, casa: "bogota"]

  def function_1() do
    IO.puts("function 1")
  end

  def function_2() do
    IO.puts("function 2")
  end

  def function_3() do
    IO.puts("function 3")
  end
end
