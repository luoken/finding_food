defmodule FindMeFood.Repo do
  use Ecto.Repo,
    otp_app: :find_me_food,
    adapter: Ecto.Adapters.Postgres
end
