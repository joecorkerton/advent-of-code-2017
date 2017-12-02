defmodule DayOne.ProblemTwoTest do
  use ExUnit.Case
  doctest DayOne.ProblemTwo

  test "Sums digits halfway round the circular list" do
    assert DayOne.ProblemTwo.solve_captcha("11") === 2
    assert DayOne.ProblemTwo.solve_captcha("1221") === 0
    assert DayOne.ProblemTwo.solve_captcha("123425") === 4
    assert DayOne.ProblemTwo.solve_captcha("123123") === 12
    assert DayOne.ProblemTwo.solve_captcha("12131415") === 4
  end
end
