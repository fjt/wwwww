#!/usr/bin/ruby1.8
def gauss(mean=0.0, var=1.0)
  sigma=Math::sqrt(var)
  sigma*(Array.new(12){rand(0)}.inject(0){|r, v|r+=v}-6.0) + mean
end
def abs
  if self > 0
    self
  else
    -self
  end
end

wl=(wchar=["w", "W", "Ｗ", "ｗ", "うぇっ"]).length

len=(140*(gauss.abs)).to_i
len.times{print(wchar[(gauss(0, 0.05).abs-1)*wl])}; print "\n"
