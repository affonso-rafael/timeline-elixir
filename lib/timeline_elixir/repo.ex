defmodule TimelineElixir.Repo do
  use Ecto.Repo,
    otp_app: :timeline_elixir,
    adapter: Ecto.Adapters.Postgres
end
