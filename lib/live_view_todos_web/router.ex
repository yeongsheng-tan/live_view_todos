defmodule LiveViewTodosWeb.Router do
  use LiveViewTodosWeb, :router

  import Phoenix.LiveView.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug :put_root_layout, {LiveViewTodosWeb.LayoutView, :root}
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", LiveViewTodosWeb do
    pipe_through :browser

    live "/", TodoLive
  end

  # Other scopes may use custom stacks.
  # scope "/api", LiveViewTodosWeb do
  #   pipe_through :api
  # end
end
