defmodule Bob do
  def hey(input) do

    cond do
      empty?(input) -> "Fine. Be that way!"
      yelled_sentence?(input) && question?(input) -> "Calm down, I know what I'm doing!"
      yelled_sentence?(input) -> "Whoa, chill out!"
      question?(input) -> "Sure."
      true -> "Whatever."
    end
  end

  defp empty?(input) do
    String.trim(input) == ""
  end

  defp only_numbers?(input) do
    String.match?(input, ~r/^[0-9, ?]*$/)
  end

  defp question?(input) do
    String.ends_with?(input, "?")
  end

  defp yelled_sentence?(input) do
    String.upcase(input) == input && !only_numbers?(input)
  end
end
