# Rock A / X / 1
# Paper B / Y / 2
# Scissors C / Z / 3

defmodule RockPaperScissors do
  def get_result(pair) do
    case pair do
      {"A", "X"} -> 3 + 1
      {"B", "Y"} -> 3 + 2
      {"C", "Z"} -> 3 + 3
      {"A", "Y"} -> 6 + 2
      {"A", "Z"} -> 0 + 3
      {"B", "X"} -> 0 + 1
      {"B", "Z"} -> 6 + 3
      {"C", "X"} -> 6 + 1
      {"C", "Y"} -> 0 + 2
      _ -> 0
    end
  end
end

{_, data} = File.read('day_2_input.txt')

data
|> String.split("\n")
|> Enum.reduce(0, fn x, acc ->
  RockPaperScissors.get_result(List.to_tuple(String.split(x))) + acc
end)
|> IO.inspect()
