# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     FindMeFood.Repo.insert!(%FindMeFood.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias FindMeFood.Repo
alias FindMeFood.Restaurants.Restaurant

%Restaurant{
  name: "Running Goose",
  address: "1620 N Cahuenga Blvd",
  city: "Hollywood",
  state: "California",
  country: "United States",
  type_of_food: "Tapas/Small Plates, Gastropubs, Latin American",
  rating: 4,
  price: 20
}
|> Repo.insert!()

%Restaurant{
  name: "Cleo Hollywood",
  address: "1717 Vine St",
  city: "Hollywood",
  state: "California",
  country: "United States",
  type_of_food: "Mediterranean, Venues & Event Space, Tapas/Small",
  rating: 4,
  price: 30
}
|> Repo.insert!()

%Restaurant{
  name: "Banh Oui",
  address: "1552 N Cahuenga Blvd",
  city: "Hollywood",
  state: "California",
  country: "United States",
  type_of_food: "Sandwiches, Burgers",
  rating: 4,
  price: 10
}
|> Repo.insert!()
