defmodule DayOne.ProblemOne do
  @doc """
  Solve a captcha to prove you are not human.

  The captcha requires you to review a sequence of digits (your puzzle input) and find the sum of all digits
  that match the next digit in the list. The list is circular, so the digit after the last digit is the first
  digit in the list.

  ## Examples

      iex> DayOne.ProblemOne.solve_captcha("01123445")
      5

  """
  @spec solve_captcha(String) :: integer
  def solve_captcha(digits) do
    digits = string_to_integer_list(digits)
    circular_digits = digits ++ [hd digits]
    sum_sequential_digits(circular_digits, 0)
  end

  defp string_to_integer_list(string) do
    string |> String.split("") |> Enum.filter(fn(x) -> x != "" end) |> Enum.map(fn(x) -> String.to_integer(x) end)
  end

  defp sum_sequential_digits([_], sum) do
    sum
  end

  defp sum_sequential_digits(digits, sum) do
    case digits do
      [i | [i | _]] -> sum_sequential_digits(tl(digits), sum + i)
      _ -> sum_sequential_digits(tl(digits), sum)
    end
  end
end
