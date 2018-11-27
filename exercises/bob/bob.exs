defmodule Bob do
  def hey(input) do
    has_only_numbers = String.match?(input, ~r/^[0-9, ?]*$/)

    cond do
      String.trim(input) == "" -> "Fine. Be that way!"
      String.upcase(input) == input && String.ends_with?(input, "?") && !has_only_numbers -> "Calm down, I know what I'm doing!"
      String.ends_with?(input, "?") -> "Sure."
      String.upcase(input) == input && !has_only_numbers -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end
end
