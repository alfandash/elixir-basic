defmodule BasicTest do
  use ExUnit.Case
  doctest Basic

  test "greets the world" do
    assert Basic.hello() == :world
  end

  test "adding number" do
    assert Basic.add(1, 2) == 3
  end

  test "substract number" do
    assert Basic.substract(4, 2) == 2
  end
end
