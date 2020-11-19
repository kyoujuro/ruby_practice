def warikan(price, count = 2)
  warikan_price = price / count
  warikan_price += 1 unless price % count == 0
  otsuri = warikan_price * count - price
  [warikan_price, otsuri]  
end

p warikan(2000,3)
