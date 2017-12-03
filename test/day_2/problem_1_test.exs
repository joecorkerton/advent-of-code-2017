defmodule Day2.Problem1Test do
  use ExUnit.Case

  test "Calculates checksums correctly" do
    assert Day2.Problem1.checksum("1\t3\t24") == 23
    assert Day2.Problem1.checksum("1\t1\t1") == 0
    assert Day2.Problem1.checksum("1\t3\t6\n0\t8\t63") == 68
  end
end
