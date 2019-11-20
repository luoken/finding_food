defmodule FindMeFood.Restaurant do
  use Ecto.Schema
  import Ecto.Changeset

  schema "restaurants" do
    field :address, :string
    field :city, :string
    field :country, :string
    field :name, :string
    field :price, :integer
    field :rating, :integer
    field :state, :string
    field :type_of_food, :string

    timestamps()
  end

  @doc false
  def changeset(restaurant, attrs) do
    restaurant
    |> cast(attrs, [:name, :address, :city, :state, :country, :type_of_food, :rating, :price])
    |> validate_required([
      :name,
      :address,
      :city,
      :state,
      :country,
      :type_of_food,
      :rating,
      :price
    ])
  end
end
