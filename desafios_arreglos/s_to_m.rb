seconds = [100, 50, 1000, 5000, 1000, 500]

def to_minutes(arr)
    n = arr.count
    min = []
    n.times do |i|
        m = arr[i] * (1.0/60.0)
        min.push m.to_i
    end
    min

end

print to_minutes(seconds)
print "\n"