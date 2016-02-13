defmodule Example2.Mixfile do
  use Mix.Project

  def project do
    [app: :example2,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [applications: [:quantum, :logger]]
  end

  defp deps do
    [{:quantum, ">= 1.6.1"}]
  end

end
