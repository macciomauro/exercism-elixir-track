defmodule Grains do
  @doc """
  Calculate two to the power of the input minus one.
  """
  @spec square(pos_integer) :: pos_integer
  def square(number) do
    cond do
      number > 64 || number <= 0 -> {:error, "The requested square must be between 1 and 64 (inclusive)"}
      true -> {:ok, calculate_square(number)}
    end
  end

  @doc """
  Adds square of each number from 1 to 64.
  """
  @spec total :: pos_integer
  def total do
    {:ok, Enum.reduce(1..64, &(calculate_square(&1) + &2))}
  end

  defp calculate_square(number) do
    trunc(:math.pow(2, number - 1))
  end
end
