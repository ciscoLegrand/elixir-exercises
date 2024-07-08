defmodule FizzBuzzTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  test "Print every number or fizz for module 3, buzz for module 5 or fizzbuzz for module 3 and module 5" do
    expected_output = Enum.join(
      Enum.map(1..100, fn n ->
        cond do
          rem(n, 3) == 0 and rem(n, 5) == 0 -> "fizzbuzz"
          rem(n, 3) == 0 -> "fizz"
          rem(n, 5) == 0 -> "buzz"
          true -> Integer.to_string(n)
        end
      end),
      "\n"
    ) <> "\n"

    assert capture_io(fn -> FizzBuzz.message() end) == expected_output
  end
end
