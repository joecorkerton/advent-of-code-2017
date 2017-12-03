defmodule Day3.Problem1 do
  @doc """
  You come across an experimental new kind of memory stored on an infinite two-dimensional grid.

  Each square on the grid is allocated in a spiral pattern starting at a location marked 1 and then counting up while
  spiraling outward. For example, the first few squares are allocated like this:

  17  16  15  14  13
  18   5   4   3  12
  19   6   1   2  11
  20   7   8   9  10
  21  22  23---> ...

  Programs can only move up, down, left, or right. They always take the shortest path:
  the Manhattan Distance between the location of the data and square 1.

  How many steps are required to carry the data from the square identified in your puzzle input all
  the way to the access port?
  """
  @spec steps(integer) :: integer
  def steps(position) do
    layer = spiral_layer(position, 0)
    layer + steps_in_layer(position, layer)
  end

  defp spiral_layer(position, current_layer) do
    if :math.pow(2 * current_layer + 1, 2) >= position do
      current_layer
    else
      spiral_layer(position, current_layer + 1)
    end
  end

  defp steps_in_layer(position, layer) do
    max_value = round(:math.pow(2 * layer + 1, 2))
    cond do
      position >= max_value - (2 * layer) -> abs(max_value - (layer + position))
      position >= max_value - (4 * layer) -> abs(max_value - (3 * layer + position))
      position >= max_value - (6 * layer) -> abs(max_value - (5 * layer + position))
      true -> abs(max_value - (7 * layer + position))
    end
  end
end
