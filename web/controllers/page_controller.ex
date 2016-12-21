defmodule HelloPhoenix.PageController do
  use HelloPhoenix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def gallery(conn, _params) do
    render conn, "gallery.html"
  end
end