# arr_1 = [100, 800, 250, 300, 500, 2500] # => 741
# arr_2 = [2000, 800, 250, 300, 500, 2500] # => 1058

def promedio(array)
    array.sum / array.count
end

def compara_arrays(arr_1, arr_2)
    if promedio(arr_1) > promedio(arr_2)
        return promedio(arr_1)
    else
        return promedio(arr_2)
    end
end

# puts compara_array(arr_1, arr_2)