defmodule Phoenix14.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Start the Ecto repository
      Phoenix14.Repo,
      # Start the endpoint when the application starts
      Phoenix14Web.Endpoint
      # Starts a worker by calling: Phoenix14.Worker.start_link(arg)
      # {Phoenix14.Worker, arg},
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Phoenix14.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    Phoenix14Web.Endpoint.config_change(changed, removed)
    :ok
  end
end
