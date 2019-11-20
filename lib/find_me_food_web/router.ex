defmodule FindMeFoodWeb.Router do
  use FindMeFoodWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  # scope "/api", FindMeFoodWeb do
  #   pipe_through :api
  # end
  scope "/" do
    pipe_through :api

    forward "/api", Absinthe.Plug, schema: FindMeFoodWeb.Schema.Schema

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: FindMeFoodWeb.Schema.Schema,
      interface: :simple
  end
end
