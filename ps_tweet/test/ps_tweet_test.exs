defmodule PsTweetTest do
  use ExUnit.Case
  doctest PsTweet

  test "greets the world" do
    assert PsTweet.hello() == :world
  end
end
