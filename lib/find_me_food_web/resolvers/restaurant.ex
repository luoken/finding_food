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

  def create_restaurant(_, %{restaurant_create: restaurant_create}, _) do
    case Restaurants.create_restaurant(restaurant_create) do
      {:ok, restaurant_create} ->
        {:ok, restaurant_create}

      _error ->
        {:error, "count not create restaurant"}
    end
  end
end
