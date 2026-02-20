defmodule Bowling do
  def score([]), do: 0
  def score([[10,10,extra]|others]) do
      10 + 10 + extra + score(others)
  end
  def score([[10|_]|others]) do
    [f,s|_] = hd(others)
    if s == nil do
      [_,[extra,_|_]|_] = others
      10 + f + extra + score(others)
    else
      10 + f + s + score(others)
    end

  end
  def score([[f,s|_]|others]) when f + s == 10, do: f+ s +  hd(hd(others)) + score(others)
  def score([[f,s|_]|others]), do:  f + s + score(others)
end
