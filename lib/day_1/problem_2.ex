import Day1.Problem1, only: [string_to_integer_list: 1]

defmodule Day1.Problem2 do
  @doc """
  Solve a captcha to prove you are not human.

  The captcha requires you to review a sequence of digits (your puzzle input) and find the sum of all digits
  that match the digit halfway around the circular list.

  That is, if your list contains 10 items, only include a digit in your sum if the digit 10/2 = 5 steps forward
  matches it. Fortunately, your list has an even number of elements.

  ## Examples

      iex> Day1.Problem2.solve_captcha("1212")
      6

  """
  @spec solve_captcha(String) :: integer
  def solve_captcha(digits) do
    digits = digits |> string_to_integer_list() |> List.to_tuple()
    sum_opposite_digits(digits, div(tuple_size(digits), 2) - 1, 0)
  end

  defp sum_opposite_digits(_, -1, sum) do
    sum
  end

  defp sum_opposite_digits(digits, position, sum) do
    value = elem(digits, position)
    opposite_value = elem(digits, opposite_value_position(position, tuple_size(digits)))
    case value do
      ^opposite_value -> sum_opposite_digits(digits, position - 1, sum + 2 * value)
      _ -> sum_opposite_digits(digits, position - 1, sum)
    end
  end

  defp opposite_value_position(position, size) do
    rem(position + div(size, 2), size)
  end
end
