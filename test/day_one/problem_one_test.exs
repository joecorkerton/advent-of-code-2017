defmodule DayOne.ProblemOneTest do
  use ExUnit.Case
  doctest DayOne.ProblemOne

  test "Sums the sequential digits" do
    assert DayOne.ProblemOne.solve_captcha("0112") === 1
    assert DayOne.ProblemOne.solve_captcha("1122") === 3
    assert DayOne.ProblemOne.solve_captcha("10002") === 0
  end

  test "Doesn't sum non sequential digits" do
    assert DayOne.ProblemOne.solve_captcha("123456") === 0
  end

  test "Treats the digits as circular" do
    assert DayOne.ProblemOne.solve_captcha("11") === 2
    assert DayOne.ProblemOne.solve_captcha("912129") === 9
  end
end
