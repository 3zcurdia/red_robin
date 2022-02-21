defmodule RedRobin.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      RedRobin.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: RedRobin.PubSub}
      # Start a worker by calling: RedRobin.Worker.start_link(arg)
      # {RedRobin.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: RedRobin.Supervisor)
  end
end
