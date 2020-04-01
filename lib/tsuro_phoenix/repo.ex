defmodule TsuroPhoenix.Repo do
  use Ecto.Repo,
    otp_app: :tsuro_phoenix,
    adapter: Ecto.Adapters.Postgres
end
