# iex_elixir_docs

When programming in Elixir the [Hex Docs](https://hexdocs.pm/elixir) will be a very valuable resource

Wouldn't it be great if you could quickly get that information from your command line

### Quick start

Copy this `.iex.exs` file into your `~` directory
```bash
curl tbd > ~/.iex.exs
```

### Use

First start up the `iex` shell:
iex

To see all modules elixir has to offer, run:
```bash
iex> M.odules
```

To see all functions in a module, run:
```bash
iex> F.unctions <Module>
```

E.g.

```bash
iex> F.unctions Enum
```

To get the docs for a function, run:
```bash
iex> h <Module>.<function>
```

E.g.

```bash
iex> h Enum.map
```
