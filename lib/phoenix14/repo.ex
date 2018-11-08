defmodule Phoenix14.Repo do
  use Ecto.Repo,
    otp_app: :phoenix14,
    adapter: Ecto.Adapters.Postgres
end
