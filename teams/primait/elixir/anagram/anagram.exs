defmodule Anagram do
  @doc """
  Returns all candidates that are anagrams of, but not equal to, 'base'.
  """
  @spec match(String.t(), [String.t()]) :: [String.t()]
  def match(base, candidates) do
    Enum.filter(candidates, &(
        sort_word(&1) |> Enum.sort() == sort_word(base) |> Enum.sort()
        &&
        sort_word(&1) != sort_word(base)
      )
    )
  end

  def sort_word(word) do
    word
    |> String.downcase()
    |> String.graphemes()
  end
end