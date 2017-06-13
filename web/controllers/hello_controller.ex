defmodule Smartfloor.HelloController do
  use Smartfloor.Web, :controller

  def index(conn, _params) do
    # redirect conn, to: "/hello/paco"
    conn
    # |> put_layout(false)
    # |> put_status(:not_found)
    |> put_flash(:info, "Welcome to Phoenix, from flash info!")
    |> put_flash(:error, "Let's pretend we have an error.")
    |> render("index.html")
  end

  def show(conn, %{"messenger" => messenger}) do
    json conn, %{messenger: messenger}
    render conn, "show.html", messenger: messenger
  end
end
