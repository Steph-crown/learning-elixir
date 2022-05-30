defmodule EnchanterShop do
  def test_data do
    [
      %{title: "Longsword", price: 50, magic: false},
      %{title: "Healing Potion", price: 60, magic: true},
      %{title: "Rope", price: 10, magic: false},
      %{title: "Dragon's Spear", price: 100, magic: true}
    ]
  end

  #   empty list
  def enchant([]) do
    []
  end

  def enchant([%{title: title, price: price, magic: magic} | tail]) do
    [%{title: title <> " magic", price: price * 3, magic: magic} | enchant(tail)]
  end

  def main do
    IO.puts(enchant(test_data()))
  end
end
