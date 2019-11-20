defmodule FindMeFoodWeb.Schema.InputTypes do
  use Absinthe.Schema.Notation

  input_object :restaurant_create do
    field(:name, :string)
    field(:address, :string)
    field(:city, :string)
    field(:state, :string)
    field(:country, :string)
    field(:type_of_food, :string)
    field(:rating, :integer)
    field(:price, :integer)
  end
end
