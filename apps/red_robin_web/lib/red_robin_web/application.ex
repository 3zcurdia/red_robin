defmodule RedRobinWeb.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      RedRobinWeb.Telemetry,
      # Start the Endpoint (http/https)
      RedRobinWeb.Endpoint
      # Start a worker by calling: RedRobinWeb.Worker.start_link(arg)
      # {RedRobinWeb.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: RedRobinWeb.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    RedRobinWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
