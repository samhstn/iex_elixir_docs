defmodule Functions do
  def unctions(module), do: module.__info__(:functions)
end

defmodule Modules do
  def odules do
    get_modules() |> filter_sort_erlang_modules
  end

  def odules_all do
    get_modules_from_applications() |> filter_sort_erlang_modules
  end

  defp get_modules do
    :code.all_loaded
    |> Enum.map(&elem(&1, 0))
  end

  defp get_modules_from_applications do
    for app <- loaded_applications(),
        {:ok, modules} = :application.get_key(app, :modules),
        module <- modules do
      module
    end
  end

  defp loaded_applications do
    :application.loaded_applications
    |> Enum.map(&elem(&1, 0))
  end

  defp filter_sort_erlang_modules(modules) do
    modules
    |> Enum.filter(&(Regex.match?(~r/[A-Z]/, Atom.to_string(&1))))
    |> Enum.sort
  end
end

alias Functions, as: F
alias Modules, as: M

IEx.configure [inspect: [limit: :infinity]]
