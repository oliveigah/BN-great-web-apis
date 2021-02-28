defmodule BnGreatWebApis.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      BnGreatWebApis.Repo,
      # Start the Telemetry supervisor
      BnGreatWebApisWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: BnGreatWebApis.PubSub},
      # Start the Endpoint (http/https)
      BnGreatWebApisWeb.Endpoint
      # Start a worker by calling: BnGreatWebApis.Worker.start_link(arg)
      # {BnGreatWebApis.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: BnGreatWebApis.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    BnGreatWebApisWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
