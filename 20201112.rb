10.times do |i|
    p i
end

fibonacci = Hash.new do |h, n|
    if n < 2
      n
    else
      h[n] = h[n-1] + h[n-2]
    end
  end
  
  p fibonacci[50]
