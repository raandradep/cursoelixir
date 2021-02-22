defmodule Job do
  import CursoElixir.Stucts.User

  # defstruct [:name, user: %User{}, job2: "developer"]
  defstruct [:name, user: %CursoElixir.Stucts.User{}, job2: "developer"]

  def compres() do
    IO.puts("hola")
    IO.inspect(%Job{}, label: "soy una estructura de Job -->")
    # IO.inspect(%__MODULE__{}, label: "soy una estructura de Job -->")
  end

  @spec imprimir :: :ok
  def imprimir() do
    function_1()
    function_2()
    function_3()
  end
end
