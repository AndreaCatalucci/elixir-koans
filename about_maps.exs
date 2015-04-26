#!/usr/bin/env elixir
ExUnit.start

defmodule About_Numbers_and_booleans do
  use ExUnit.Case
  use Koans

  think "Maps are just what you expect them to be" do
    a_map = %{one: 1, two: "two"}

    assert_? is_map(a_map)
    assert a_map.one == __?
    assert a_map[:two] == __?
  end

  think "Pattern matching on maps" do
    another_map = %{two: "three", three: 4}

    %{two: a_two, three: a_three} = another_map
    assert a_two == __?
    assert a_three == __?
  end

  Code.load_file("structs.ex")

  think "Find who you really are" do
    p = %Person{name: name, soul: soul} = %Person{name: "me"}

    assert_? is_map(p)
    assert name == __?
    assert soul == __?
  end

  think "The path is over" do
    you = %Person{name: "Enlightened"}
    cat = %Cat{}

    assert Superpowers.nirvana(cat) == __?
    assert Superpowers.nirvana(you) == __?
  end

end
