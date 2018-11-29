defmodule Bob do
  def hey(input) do

    cond do
      "" == String.trim(input) -> "Fine. Be that way!"
      input == String.upcase(input) && !String.match?(input, ~r/^[0-9, ?]*$/) && String.ends_with?(input, "?") -> "Calm down, I know what I'm doing!"
      input == String.upcase(input) && !String.match?(input, ~r/^[0-9, ?]*$/) -> "Whoa, chill out!"
      String.ends_with?(input, "?") -> "Sure."
      true -> "Whatever."
    end
  end
end
