defmodule BnGreatWebApis.Repo do
  use Ecto.Repo,
    otp_app: :bn_great_web_apis,
    adapter: Ecto.Adapters.Postgres
end
