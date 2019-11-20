defmodule FindMeFoodWeb.Schema.Schema do
  use Absinthe.Schema
  # import_type(FindMeFoodWeb.Schema.InputTypes) 
  import_types(FindMeFoodWeb.Schema.InputTypes)

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
    field :restaurant_by_name, :restaurant do
      arg(:name, non_null(:string))
      resolve(&FindMeFoodWeb.Resolvers.Restaurant.restaurant_by_name/3)
    end
  end

  mutation do
    @desc "Adds a new restaurant"
    field :create_restaurant, :restaurant do
      arg(:restaurant_create, non_null(:restaurant_create))
      resolve(&FindMeFoodWeb.Resolvers.Restaurant.create_restaurant/3)
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
