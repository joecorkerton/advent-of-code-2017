defmodule Day1.Problem2Test do
  use ExUnit.Case
  doctest Day1.Problem2

  test "Sums digits halfway round the circular list" do
    assert Day1.Problem2.solve_captcha("11") === 2
    assert Day1.Problem2.solve_captcha("1221") === 0
    assert Day1.Problem2.solve_captcha("123425") === 4
    assert Day1.Problem2.solve_captcha("123123") === 12
    assert Day1.Problem2.solve_captcha("12131415") === 4
  end
end
