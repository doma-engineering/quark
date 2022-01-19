defmodule Quark.Mixfile do
  use Mix.Project

  def project do
    [
      app: :quark,
      name: "Quark",
      description:
        "Common combinators for Elixir, forked by doma for maintenance and testing packagesets by doma.",
      version: "2.3.2-doma",
      elixir: "~> 1.11",
      package: [
        name: "doma_quark",
        maintainers: ["doma.dev"],
        licenses: ["MIT"],
        links: %{
          "Upstream" => "https://github.com/witchcrafters/quark",
          "GitHub" => "https://github.com/doma-engineering/quark"
        }
      ],
      source_url: "https://github.com/witchcrafters/quark",
      homepage_url: "https://github.com/witchcrafters/quark",
      aliases: [
        quality: [
          "test",
          "credo --strict"
        ]
      ],
      deps: [
        {:credo, "~> 1.5", only: [:dev, :test], runtime: false},
        {:dialyxir, "~> 1.1", only: :dev, runtime: false},
        {:earmark, "~> 1.4", only: :dev, runtime: false},
        {:ex_doc, "~> 0.27", only: :dev, runtime: false},
        {:inch_ex, "~> 2.0", only: [:dev, :docs, :test], runtime: false}
      ],
      docs: [
        extras: ["README.md"],
        logo: "./brand/logo.png",
        main: "readme"
      ]
    ]
  end
end
