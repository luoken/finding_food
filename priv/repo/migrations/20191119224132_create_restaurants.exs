defmodule FindMeFood.Repo.Migrations.CreateRestaurants do
  use Ecto.Migration

  def change do
    create table(:restaurants) do
      add :name, :string
      add :address, :string
      add :city, :string
      add :state, :string
      add :country, :string
      add :type_of_food, :string
      add :rating, :integer
      add :price, :integer

      timestamps()
    end
  end
end
