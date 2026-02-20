defmodule Bowling do
  def score([]), do: 0
  #Caso BASE
  """
  def score([[10,10,extra]|others]) do
      10 + 10 + extra + score(others)
  end
  """
  def score([[10|_]|others]) do
    [f,s|_] = hd(others)
      10 + f + s + score(others)


  end

  def score([[f,s|_]|others]) when f + s == 10, do: f+ s +  hd(hd(others)) + score(others)

  def score([[f,s|_]|others]), do:  f + s + score(others)

end
