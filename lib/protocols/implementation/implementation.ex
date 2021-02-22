defimpl CursoElixir.Protocols.Size, for: Any do
  def size(_), do: {:error, "DataStruct is not defined"}
  def size_2(_), do: {:error, "DataStruct is not defined"}
end

defimpl CursoElixir.Protocols.Size, for: BitString do
  def size(string), do: byte_size(string)
  def size_2(string), do: byte_size(string)
end

defimpl CursoElixir.Protocols.Size, for: Map do
  def size(map), do: map_size(map)
  def size_2(map), do: map_size(map)
end

defimpl CursoElixir.Protocols.Size, for: Tuple do
  def size(tuple), do: tuple_size(tuple)
  def size_2(tuple), do: tuple_size(tuple)
end

defimpl CursoElixir.Protocols.Size, for: CursoElixir.Stucts.User do
  def size(map), do: map_size(map)-1
  def size_2(map), do: map_size(map)-1
end

defimpl CursoElixir.Protocols.Size, for: Job do
  def size(map), do: map_size(map)-1
  def size_2(map), do: map_size(map)-1
end
