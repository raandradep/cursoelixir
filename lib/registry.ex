defmodule Registry do
  use GenServer

  @impl true
  def init(:ok) do
    {:ok, %{}}
  end

  @impl true
  def handle_call({:lookup, name}, _from, map_names) do
    #{:reply, resultado de la busqueda, mapa }
    {:reply, Map.fetch(map_names, name), map_names} #sync
  end

  @impl true
  def handle_cast({:create, name, valor}, map_names) do
    if Map.has_key?(map_names, name) do
      {:noreply, name} #async
    else
      {:noreply, Map.put(map_names, name, valor)} #async
    end
  end

  @doc """
  Inicio el Genserver de Registry
  """
  def start_link(opts) do
    GenServer.start_link(__MODULE__, :ok, opts)
  end

  def lookup(server, name) do
    GenServer.call(server, {:lookup,name})
  end

  def create(server, name, valor) do
    GenServer.cast(server, {:create, name, valor})
  end




end
