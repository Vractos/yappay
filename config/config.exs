# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :yappay,
  ecto_repos: [Yappay.Repo]

# Configures the endpoint
config :yappay, YappayWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "rpQCc4lStix3pAXtadddkvjbs1pVjV4SauNn86W8ooNpFGKAp12mvHu544IVaJuL",
  render_errors: [view: YappayWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Yappay.PubSub,
  live_view: [signing_salt: "vDWkwoFV"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"