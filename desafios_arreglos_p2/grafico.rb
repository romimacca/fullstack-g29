data = [5, 3, 2, 5, 10, 19, 20]

def chart(data)
    barra = ">"
    barra_numero = " "
    data.count.times do |i|
        print '|'
        data[i].times do |j|
            if j < 10
                print '**'
                if data.max == data[i]
                    barra += '--' 
                    barra_numero += (j+1).to_s+" "
                end
            else
                print '***'
                if data.max == data[i]
                    barra += '---' 
                    barra_numero += (j+1).to_s+" "
                end
            end
        end
        print "\n"
    end
    puts barra
    puts barra_numero
end

chart(data)