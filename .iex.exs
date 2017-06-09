defmodule Functions do
  def unctions(module),
    do: module.__info__(:functions)
end

defmodule Modules do
  def odules do
    :code.all_loaded
    |> Enum.map(&elem(&1, 0))
    |> Enum.filter(&(Regex.match?(~r/[A-Z]/, Atom.to_string(&1))))
  end
end

alias Functions, as: F
alias Modules, as: M

IEx.configure [inspect: [limit: :infinity]]
