defmodule EchoBot do
  def main do
    IO.puts("Hello, I am echo bot! \nEnter 'quit' to exit.")
    sample()
  end

  defp sample do
    input = IO.read(:stdio, :line)
    IO.write(input)

    unless String.equivalent?(input, "quit\n") do
      sample()
    end

    IO.puts("Goodbye!")
  end
end
