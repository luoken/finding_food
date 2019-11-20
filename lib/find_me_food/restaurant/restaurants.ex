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

  def get_restaurant_by_name(name) do
    Repo.get_by(Restaurant, name: name)
  end
end
