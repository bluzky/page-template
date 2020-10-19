defmodule Pag.Repo do
  use Ecto.Repo,
    otp_app: :pag,
    adapter: Ecto.Adapters.Postgres
end
