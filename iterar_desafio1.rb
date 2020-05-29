a = [1, 9 ,2, 10, 3, 7, 4, 6]
a.map{|e| e.to_f + 1 }.select{ |e| e >= 5}.count
a.inject{|sum, x| sum += x }