defmodule DayTwo.ProblemOneTest do
  use ExUnit.Case

  test "Calculates checksums correctly" do
    assert DayTwo.ProblemOne.checksum("1\t3\t24") == 23
    assert DayTwo.ProblemOne.checksum("1\t1\t1") == 0
    assert DayTwo.ProblemOne.checksum("1\t3\t6\n0\t8\t63") == 68
  end
end
