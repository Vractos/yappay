defmodule Yappay.Repo do
  use Ecto.Repo,
    otp_app: :yappay,
    adapter: Ecto.Adapters.Postgres
end
