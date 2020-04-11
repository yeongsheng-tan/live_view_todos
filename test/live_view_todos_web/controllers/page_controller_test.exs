defmodule LiveViewTodosWeb.PageControllerTest do
  use LiveViewTodosWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "LiveView Todo List"
  end
end
