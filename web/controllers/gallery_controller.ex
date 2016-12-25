defmodule HelloPhoenix.GalleryController do
  use HelloPhoenix.Web, :controller

  def index(conn, _params) do
    cards = Repo.all(HelloPhoenix.Card)
    render conn, "index.html", cards: cards
  end
end