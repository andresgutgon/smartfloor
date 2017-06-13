defmodule Smartfloor.PageController do
  use Smartfloor.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
