defmodule FindMeFoodWeb.Resolvers.Restaurant do
  alias FindMeFood.Restaurants

  def restaurants(_, _, _) do
    {:ok, Restaurants.list_restaurants()}
  end

  def restaurant(_, %{id: id}, _) do
    {:ok, Restaurants.get_restaurant(id)}
  end

  def restaurant_by_name(_, %{name: name}, _) do
    {:ok, Restaurants.get_restaurant_by_name(name)}
  end
end
