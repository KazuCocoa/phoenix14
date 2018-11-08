defmodule Phoenix14Web.PageController do
  use Phoenix14Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
