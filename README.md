# FindMeFood

Playing with graphql thing w/ elixir.


List of things it can/can't do:
- [x] Get all restaurants
- [x] Get restaurant by ID
- [x] Get restaurant by Name
- [x] Add new restaurant
- [ ] Update restaurant
- [x] Count total items in query
- [ ] Get restaurant by property
- [ ] Get count by filtering


Things to do before you start you move on to start the application:

  * Make sure you have postgres installed.
    * If you have a mac and homebrew, you can install with `brew install postgres`

  * Make sure your postgres service is started.
    * If you installed postgres with homebrew, you are able to run postgres with: `brew services start postgresql` and to stop it, it'll be: `brew services stop postgresql`
    * If you have a gui, you'll need to start and create the db yourself.


To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Run the seeds so there is something inside the db.
    * `mix run priv/repo/seeds.exs`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000/graphiql`](http://localhost:4000/graphiql) from your browser. yay!