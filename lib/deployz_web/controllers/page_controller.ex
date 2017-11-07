defmodule DeployzWeb.PageController do
  use DeployzWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
