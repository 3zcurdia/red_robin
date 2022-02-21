defmodule RedRobinWeb.PageController do
  use RedRobinWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
