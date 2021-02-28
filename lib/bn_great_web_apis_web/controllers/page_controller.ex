defmodule BnGreatWebApisWeb.PageController do
  use BnGreatWebApisWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
