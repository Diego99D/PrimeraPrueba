defmodule Pparks.Repo do
  use Ecto.Repo,
    otp_app: :pparks,
    adapter: Ecto.Adapters.Postgres
end
