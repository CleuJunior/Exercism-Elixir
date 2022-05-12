defmodule Lasagna do

  def expected_minutes_in_oven do
    40
  end

  def remaining_minutes_in_oven(remaining) do
    Lasagna.expected_minutes_in_oven - remaining
  end

  def preparation_time_in_minutes(layers) do
    layers * 2
  end

  def total_time_in_minutes(number_of_layers, minutes_in_the_oven) do
    preparation_time_in_minutes(number_of_layers) + minutes_in_the_oven
  end

  def alarm do
    "Ding!"
  end
end
