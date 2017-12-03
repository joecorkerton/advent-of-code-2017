defmodule Day1.Problem1Test do
  use ExUnit.Case
  doctest Day1.Problem1

  test "Sums the sequential digits" do
    assert Day1.Problem1.solve_captcha("0112") === 1
    assert Day1.Problem1.solve_captcha("1122") === 3
    assert Day1.Problem1.solve_captcha("10002") === 0
  end

  test "Doesn't sum non sequential digits" do
    assert Day1.Problem1.solve_captcha("123456") === 0
  end

  test "Treats the digits as circular" do
    assert Day1.Problem1.solve_captcha("11") === 2
    assert Day1.Problem1.solve_captcha("912129") === 9
  end
end
