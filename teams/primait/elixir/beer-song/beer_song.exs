defmodule BeerSong do
  @doc """
  Get a single verse of the beer song
  """
  @spec verse(integer) :: String.t()
  def verse(number) do
    String.capitalize("#{bottles_string(number)} of beer on the wall, #{bottles_string(number)} of beer.")
    <> "\n" <> 
    "#{take_beer_phrase(number)}, #{bottles_string(bottles_number_remained(number))} of beer on the wall."
    <> "\n"
  end

  defp bottles_string(number) do
    case number do
      1 -> "#{number} bottle"
      0 -> "no more bottles"
      _ -> "#{number} bottles"
    end
  end

  defp bottles_number_remained(number) do
    cond do
      (number - 1) < 0 -> 99
      true -> (number - 1)
    end
  end

  defp take_beer_phrase(number) do
    case number do
      1 -> "Take it down and pass it around"
      0 -> "Go to the store and buy some more"
      _ -> "Take one down and pass it around"
    end
  end

  @doc """
  Get the entire beer song for a given range of numbers of bottles.
  """
  @spec lyrics(Range.t()) :: String.t()
  def lyrics(range \\ 99..0) do
    Enum.map(range, &(verse(&1)))
    |> Enum.join("\n")
  end
end
