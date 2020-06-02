nombres = ['Violeta', 'Andino', 'Clemente','Javiera', 'Paula', 'Pía', 'Ray']
# Nombres largos
def nombres_largos(nombres)  
    nombres.select{ |x| x.length > 5 } # ["Violeta", "Andino", "Clemente", "Javiera"]
end
# Nombres en minuscula
def nombres_minusculas(nombres) 
    nombres.map{|x| x.downcase} # ["violeta", "andino", "clemente", "javiera", "paula", "pía", "ray"]
end
# Nombres que comienzan con P
def nombres_p(nombres) 
    nombres.select{|x| x =~ /P/} # ["Paula", "Pía"]
end
# Cuantos nombres comienzan con A, B o C
def nombres_abc(nombres)
    nombres.select{|x| x =~ /A/ || x =~ /B/ || x =~ /C/}.count # 2
end
# Cuantas letras tiene cada nombre
def contador_letras(nombres)
    nombres.map{ |x| x.length} # [7, 6, 8, 7, 5, 3, 3]
end