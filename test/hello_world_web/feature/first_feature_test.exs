defmodule HelloWorldWeb.FirstFeatureTest do
  use ExUnit.Case, async: true
  use Wallaby.Feature

  feature "visit the home page", %{session: session} do
    session
    |> visit("/")
    |> assert_has(Query.css(".welcome-message", text: "Welcome to Phoenix!"))
  end
end
