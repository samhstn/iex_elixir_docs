# iex_elixir_docs

When programming in Elixir, the [Hex Docs](https://hexdocs.pm/elixir) are a very valuable resource.

Wouldn't it be great if you could quickly get that information from your command line?

## Quick start

Download the provided `.iex.exs` configuration file to your home directory.

```bash
curl -sSL https://cdn.rawgit.com/shouston3/iex_elixir_docs/1ff5f62f/.iex.exs >> ~/.iex.exs
```

## Usage

First start the Elixir's interactive shell `iex`.

**List all modules in Elixir's standard library**

```elixir
iex> M.odules
```

**List all functions in a module**

```elixir
iex> F.unctions Module
iex> F.unctions Enum
```

**Get the docs for a module or function\***  
<sup>\* This behaviour is built into `iex` and provided by the `IEx.Helpers` module.</sup>

```elixir
iex> h Enum
iex> h Enum.map
iex> h Enum.map/2
```
