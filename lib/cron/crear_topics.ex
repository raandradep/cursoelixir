defmodule ExplodingTopics.Manage do
  import CursoElixirDb.HelperExplodingTopic
  import GetExplodingTopics

  def add_topic() do
     get_data() |> create_exploding_topic_all()
  end

end
