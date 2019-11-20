defmodule FindMeFoodWeb.Schema.Schema do
  use Absinthe.Schema

  query do
    @desc "Get a list of restaurants"
    field :restaurants, list_of(:restaurant) do
      resolve(&FindMeFoodWeb.Resolvers.Restaurant.restaurants/3)
    end

    @desc "Get a restaurant by id"
    field :restaurant, :restaurant do
      arg(:id, non_null(:id))
      resolve(&FindMeFoodWeb.Resolvers.Restaurant.restaurant/3)
    end

    @desc "Get a restaurant by name"
    field :restaurantv2, :restaurant do
      arg(:name, non_null(:string))
      resolve(&FindMeFoodWeb.Resolvers.Restaurant.restaurantv2/3)
    end
  end

  object :restaurant do
    field :id, non_null(:id)
    field :address, non_null(:string)
    field :city, non_null(:string)
    field :country, non_null(:string)
    field :name, non_null(:string)
    field :price, non_null(:integer)
    field :rating, non_null(:integer)
    field :state, non_null(:string)
    field :type_of_food, non_null(:string)
  end
end
