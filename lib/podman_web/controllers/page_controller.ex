defmodule PodmanWeb.PageController do
  use PodmanWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
