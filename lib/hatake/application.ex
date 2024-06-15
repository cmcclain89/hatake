defmodule Hatake.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      HatakeWeb.Telemetry,
      # Start the Ecto repository
      Hatake.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Hatake.PubSub},
      # Start Finch
      {Finch, name: Hatake.Finch},
      # Start the Endpoint (http/https)
      HatakeWeb.Endpoint
      # Start a worker by calling: Hatake.Worker.start_link(arg)
      # {Hatake.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Hatake.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    HatakeWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
