defmodule MerklePatriciaTree.Mixfile do
  use Mix.Project

  def project do
    [
      app: :merkle_patricia_tree,
      version: "0.2.8",
      elixir: "~> 1.6",
      description: "Ethereum's Merkle Patricia Trie data structure",
      package: [
        maintainers: ["Geoffrey Hayes", "Ayrat Badykov", "Mason Forest"],
        licenses: ["MIT"],
        links: %{"GitHub" => "https://github.com/exthereum/merkle_patricia_tree"}
      ],
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      dialyzer: [ignore_warnings: ".dialyzer.ignore-warnings"]
    ]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # To depend on another app inside the umbrella:
  #
  #   {:myapp, in_umbrella: true}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:credo, "~> 1.0.0", only: [:dev, :test], runtime: false},
      {:jason, "~> 1.4", runtime: false},
      {:ex_doc, "~> 0.19", only: :dev, runtime: false},
      {:hex_prefix, "~> 0.1.0"},
      {:ex_rlp, "~> 0.5.4"},
       {:ex_keccak, "~> 0.6.0"},
      {:dialyxir, "~> 1.0.0", only: [:dev], runtime: false}
    ]
  end
end
