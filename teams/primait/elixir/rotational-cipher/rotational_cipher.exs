defmodule RotationalCipher do
  @alphabet 'abcdefghijklmnopqrstuvwxyz'
  @doc """
  Given a plaintext and amount to shift by, return a rotated string.

  Example:
  iex> RotationalCipher.rotate("Attack at dawn", 13)
  "Nggnpx ng qnja"
  """

  @spec rotate(text :: String.t(), shift :: integer) :: String.t()
  def rotate(text, shift) do
      
      text
      |> String.graphemes
      |> do_shift(shift)
      |> Enum.map(&(&1 = do_shift(&1, shift)))
      # |> Enum.join()
  end
  defp do_shift(char, shift) when char in 'a..z' do
    char <> "_"
    
    #(head + shift) + do_shift(tail, shift)
    
    # trovare posizione lettera in alfabeto
    # sommare a posizione shift
    # estrarre lettera corretta
    # se numero > 13 gestire

    # Enum.at(@alphabet, 1)
  end

  # defp do_shift(char, shift) when not char in @alphabet do
  #   char
  # end
end