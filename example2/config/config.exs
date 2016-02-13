# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :quantum, cron: [
  "* * * * *": fn -> IO.puts "Tick" end,
  "13 20 * * *": &Example2.newsletter/0,
]
