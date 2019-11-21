defmodule FindMeFood.Restaurants do
  @moduledoc """
    Restaurant context
  """

  import Ecto.Query, warn: false
  alias FindMeFood.Repo
  alias FindMeFood.Restaurant

  @doc """
    Return all restaurants
  """
  def list_restaurants do
    Repo.all(Restaurant)
  end

  @doc """
    Return single restaurant by id
  """
  def get_restaurant(id) do
    Repo.get(Restaurant, id)
  end

  @doc """
    Return Single restaurant by name
  """
  def get_restaurant_by_name(name) do
    Repo.get_by(Restaurant, name: name)
  end

  @doc """
    Creates a restaurant
  """
  def create_restaurant(attrs \\ %{}) do
    %Restaurant{}
    |> Restaurant.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
    Returns the total count
  """
  def get_total_count do
    Repo.one(from i in Restaurant, select: count(i.id))
  end
end
