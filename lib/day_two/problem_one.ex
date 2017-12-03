defmodule DayTwo.ProblemOne do
  @doc """
  Calculate the checksum of a 'spreadsheet'

  For each row, determine the difference between the largest value and the smallest value;
  the checksum is the sum of all of these differences.

  Columns separated by tabs, rows separated by new lines
  """
  @spec checksum(String) :: integer
  def checksum(input) do
    array = parse_input(input)
    array |> Enum.map(fn row -> Enum.max(row) - Enum.min(row) end) |> Enum.sum()
  end

  def parse_input(input) do
    input |> String.split("\n") |> Enum.map(fn row -> Enum.map(String.split(row), fn i -> String.to_integer(i) end) end)
  end
end
