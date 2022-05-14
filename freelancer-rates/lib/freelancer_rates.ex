defmodule FreelancerRates do

  def daily_rate(hourly_rate), do: hourly_rate * 8.0

  def apply_discount(before_discount, discount) do
    with_discount = before_discount * discount / 100
    before_discount - with_discount
  end

  def daily_discounted_rate(hourly_rate, discount) do
    hourly_rate |> daily_rate |> apply_discount(discount)
  end

  def monthly_rate(hourly_rate, discount), do: (daily_discounted_rate(hourly_rate, discount) * 22) |> ceil

  def days_in_budget(budget, hourly_rate, discount) do
    (budget / daily_discounted_rate(hourly_rate, discount)) |> Float.floor(1)
  end
end
