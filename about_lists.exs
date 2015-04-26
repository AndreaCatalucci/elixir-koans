#!/usr/bin/env elixir

ExUnit.start

defmodule About_Lists do
  use ExUnit.Case
  use Koans

  think "Create your first list" do
    a_list = __?
    assert is_list(a_list)
  end

  think "Getting list length is a kernel feature" do
    a_list = [1, 2, 3]
    assert length(a_list) == __?
  end

  think "Elixir provides a special operator to concatenate lists" do
    a_list = [1, 2]
    assert a_list ++ [3] == __?
  end

  think "Elixir provides a special operator to remove element from list" do
    a_list = [1, 2, 3]
    assert a_list -- [2] == __?
  end

  think "Only first element is removed with truncate operator" do
    a_list = [:foo, :bar, :foo]
    assert a_list -- [:foo] == __?
  end

  think "Truncate operator do nothing when element not in list" do
    a_list = [:foo, :bar]
    assert_? a_list -- [:baz] == [:foo, :bar]
  end

  think "The in operator test if element is present inner an enum" do
    a_list = [:foo, :bar]
    assert_? :bar in a_list
  end

  think "Can map, filter and reduce over enumerables" do
    a_list = [2, 3, 4]
    result = a_list 
              |> Enum.filter(&(&1 < 4))
              |> Enum.map(fn e -> e*2 end)
              |> Enum.reduce(&(&1+&2))
    assert result ==  __?
  end

  think "Comprehensions make it shorter" do
    a_list = [2, 3, 4]
    result = Enum.sum(for n <- a_list, n < 4, do: n*2)
    assert result == __?
  end

end
