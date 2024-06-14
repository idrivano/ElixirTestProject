defmodule Test do
  @moduledoc """
  Documentation for `Test`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Test.hello()
      :world

  """
  def hello do
    :world
  end
end


defmodule Projet do
  def hello do
    IO.puts "Bonjour, monde!"
  end
end

defmodule ProjetTest do
  use ExUnit.Case
  doctest MonProjet

  test "greets the world" do
    assert capture_io(fn -> MonProjet.hello() end) == "Bonjour, monde!\n"
  end
end
