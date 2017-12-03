defmodule DayTwo.ProblemTwoTest do
  use ExUnit.Case

  test "Calculates evenly divisible sums correctly" do
    assert DayTwo.ProblemTwo.evenly_divisible_sum("2\t9\t24") == 12
    assert DayTwo.ProblemTwo.evenly_divisible_sum("3\t5\t10") == 2
    assert DayTwo.ProblemTwo.evenly_divisible_sum("2\t3\t9\n4\t11\t20") == 8
  end
end
