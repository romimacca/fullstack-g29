pasos = ['230', '21', '80000', '2031', '1052000', '213b', 'b123', 'dh23h3']

def clear_steps(arr)
    arr.reject{|x| x =~ /\D/ || x.to_i <= 200 || x.to_i >= 100000}
end

print clear_steps(pasos)
print "\n"