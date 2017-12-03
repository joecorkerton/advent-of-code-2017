defmodule Day3.Problem1Test do
  use ExUnit.Case

  test "Calculates spiral memory Manhattan distance correctly" do
    assert Day3.Problem1.steps(1) == 0
    assert Day3.Problem1.steps(12) == 3
    assert Day3.Problem1.steps(23) == 2
    assert Day3.Problem1.steps(1024) == 31
  end
end
