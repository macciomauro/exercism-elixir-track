defmodule NucleotideCount do
  @nucleotides [?A, ?C, ?G, ?T]

  @doc """
  Counts individual nucleotides in a DNA strand.

  ## Examples

  iex> NucleotideCount.count('AATAA', ?A)
  4

  iex> NucleotideCount.count('AATAA', ?T)
  1
  """
  @spec count([char], char) :: non_neg_integer
  def count(strand, nucleotide) do
    Kernel.length(filter_strand_by_nucleotide(strand, nucleotide))
  end

  defp filter_strand_by_nucleotide(strand, nucleotide) do
    Enum.filter(strand, fn(nucleotide_found) -> nucleotide_found == nucleotide end)
  end

  @doc """
  Returns a summary of counts by nucleotide.

  ## Examples

  iex> NucleotideCount.histogram('AATAA')
  %{?A => 4, ?T => 1, ?C => 0, ?G => 0}
  """
  @spec histogram([char]) :: map
  def histogram(strand) do

    @nucleotides
    |> Enum.chunk_every(1)
    |> Map.new(fn [nucleotide] -> {nucleotide, count(strand, nucleotide)} end)

  end
end
