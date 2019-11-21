defmodule FindMeFoodWeb.Resolvers.Restaurant do
  @moduledoc """
    Resolvers for Restaurant.

    Resolvers are basically the functions that the schema will call to perform the various queries.
  """
  alias FindMeFood.Restaurants

  @doc """
    Returns all restaurant
  """
  def restaurants(_, _, _) do
    {:ok, Restaurants.list_restaurants()}
  end

  @doc """
    Given an id, it will return the restaurant with that id.
  """
  def restaurant(_, %{id: id}, _) do
    {:ok, Restaurants.get_restaurant(id)}
  end

  @doc """
   Given a name, it will return the restaurant with that name.
  """
  def restaurant_by_name(_, %{name: name}, _) do
    {:ok, Restaurants.get_restaurant_by_name(name)}
  end

  @doc """
    Create a restaurant.
  """
  def create_restaurant(_, %{restaurant_create: restaurant_create}, _) do
    case Restaurants.create_restaurant(restaurant_create) do
      {:ok, restaurant_create} ->
        {:ok, restaurant_create}

      _error ->
        {:error, "count not create restaurant"}
    end
  end

  @doc """
    Get total count of restaurants.
  """
  def get_total_count_restaurants(_, _, _) do
    {:ok, Restaurants.get_total_count()}
  end
end
