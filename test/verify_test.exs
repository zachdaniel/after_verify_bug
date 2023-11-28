defmodule VerifyTest do
  use ExUnit.Case
  doctest Verify

  test "greets the world" do
    assert Verify.hello() == :world
  end
end
