defmodule Bowling do
  def score([]), do: 0
  #Caso BASE

  def score([[10,10,extra]|others]) do
      10 + 10 + extra + score(others)
  end
  #Caso 10, 10 final decimo
  def score([[10|_]|others]) do
    [f,s|_] = hd(others)
    if s == nil do
      [_,[extra,_|_]|_] = others
      10 + f + extra + score(others)
    else
      10 + f + s + score(others)
    end
  #Caso strikes seguidos
  end

  def score([[f,s|_]|others]) when f + s == 10, do: f+ s +  hd(hd(others)) + score(others)

  def score([[f,s|_]|others]), do:  f + s + score(others)
  #Casos normales, spares y sin bonuses
end
