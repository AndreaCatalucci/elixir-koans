
defmodule Person do
	defstruct name: "unnamed", soul: 99
end

defmodule Cat do
	defstruct views_on_youtube: :infinity, lives: 7
end

defprotocol Superpowers do
	def nirvana(self)
end

defimpl Superpowers, for: Cat do
	def nirvana(%Cat{lives: lives}) do
    "I am becoming a nyan cat and I have #{lives-1} lives left"
	end
end

defimpl Superpowers, for: Person do
	def nirvana(%Person{name: name}) do
    "#{name} has just mastered Elixir"
	end
end