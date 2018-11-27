defmodule Bob do
  def hey(input) do

    cond do
      isEmpty(input) -> "Fine. Be that way!"
      isYelledSentence(input) && isQuestion(input) -> "Calm down, I know what I'm doing!"
      isYelledSentence(input) -> "Whoa, chill out!"
      isQuestion(input) -> "Sure."
      true -> "Whatever."
    end
  end

  defp isEmpty(input) do
    String.trim(input) == ""
  end

  defp hasOnlyNumbers(input) do
    String.match?(input, ~r/^[0-9, ?]*$/)
  end

  defp isQuestion(input) do
    String.ends_with?(input, "?")
  end

  defp isYelledSentence(input) do
    String.upcase(input) == input && !hasOnlyNumbers(input)
  end
end
