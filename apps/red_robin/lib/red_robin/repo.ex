defmodule RedRobin.Repo do
  use Ecto.Repo,
    otp_app: :red_robin,
    adapter: Ecto.Adapters.Postgres
end
