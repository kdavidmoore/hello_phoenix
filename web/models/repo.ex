defmodule HelloPhoenix.Repo do
  @moduledoc """
  In memory repository.
  """
  
  def all(HelloPhoenix.Card) do
    [%HelloPhoenix.Card{id: "1", title: "First card.", subtitle: "This is the first card.",
    text: "This is the main content.", src: "http://placehold.it/350x150"},
    %HelloPhoenix.Card{id: "2", title: "Second card.", subtitle: "This is the second card.",
    text: "This is the main content.", src: "http://placehold.it/350x150"},
    %HelloPhoenix.Card{id: "3", title: "Third card.", subtitle: "This is the third card.",
    text: "This is the main content.", src: "http://placehold.it/350x150"}]
  end

  def all(_module), do: []

  def get(module, id) do
    Enum.find all(module), fn map -> map.id == id end
  end

  def get_by(module, params) do
    Enum.find all(module), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end
  end
end