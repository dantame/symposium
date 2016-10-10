# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :symposium,
  ecto_repos: [Symposium.Repo]

# Configures the endpoint
config :symposium, Symposium.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "J+7cfbDlqX2tURIB6VWR2qb7W6VfCYwfLyv3iXI94sYtkpF/0kCjVKA5DeCaL49p",
  render_errors: [view: Symposium.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Symposium.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
