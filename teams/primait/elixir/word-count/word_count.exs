defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    sentence_list =  
      String.replace(sentence, ~r/[\p{Po}\p{S}]/u, "")
      |> String.downcase
      |> String.split([" ", "_"])
      |> Enum.filter(&(&1 != ""))
  
    Map.new(sentence_list, fn word -> {word, Enum.count(sentence_list, &(&1 == word))} end)
  end
end