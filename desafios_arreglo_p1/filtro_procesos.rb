data = open('procesos.data').readlines

clean_array = data.select{|x| x.to_i > ARGV[0].to_i}

File.write("procesos_filtrados.data", clean_array.join, mode: "w" )