defmodule ListLength do
  @spec call(list()) :: number() | :error
  def call(list) when is_list(list) do
    count(list, 0)
  end

  def call(_list), do: :error

  def count([], count), do: count

  def count([_head | tail], count) do
    count(tail, count + 1)
  end
end
