defmodule Day2.Problem2 do
  @doc """
  Calculate the evenly divisible sum of a 'spreadsheet'

  Find the only two numbers in each row where one evenly divides the other - that is, where the result of the
  division operation is a whole number. They would like you to find those numbers on each line, divide them,
  and add up each line's result.

  Columns separated by tabs, rows separated by new lines
  """
  @spec evenly_divisible_sum(String) :: integer
  def evenly_divisible_sum(input) do
    array = Day2.Problem1.parse_input(input)
    array
    |> Enum.map(fn row ->
        Enum.reduce_while(row, 0, fn x, _ ->
          evenly_divisible_result(row, x)
        end)
      end)
    |> Enum.sum()
  end

  defp evenly_divisible_result(row, x) do
    case Enum.find(List.delete(row, x), fn y -> rem(x, y) == 0 end) do
      nil -> {:cont, 0}
      y -> {:halt, div(x, y)}
    end
  end
end
