defmodule Acronym do
  @doc """
  Generate an acronym from a string.
  "This is a string" => "TIAS"
  """
  @spec abbreviate(String.t()) :: String.t()
  def abbreviate(string) do
    string
    |> Macro.underscore()
    |> String.split([" ", "-", "_"])
    |> Enum.reduce([], &([String.slice(&1, 0, 1) |> String.capitalize() | &2]))
    |> Enum.reverse
    |> Enum.join
  end
end
