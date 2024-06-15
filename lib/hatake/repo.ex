defmodule Hatake.Repo do
  use Ecto.Repo,
    otp_app: :hatake,
    adapter: Ecto.Adapters.Postgres
end
