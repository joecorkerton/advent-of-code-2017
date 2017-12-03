defmodule Day2.Problem2Test do
  use ExUnit.Case

  test "Calculates evenly divisible sums correctly" do
    assert Day2.Problem2.evenly_divisible_sum("2\t9\t24") == 12
    assert Day2.Problem2.evenly_divisible_sum("3\t5\t10") == 2
    assert Day2.Problem2.evenly_divisible_sum("2\t3\t9\n4\t11\t20") == 8
  end
end
