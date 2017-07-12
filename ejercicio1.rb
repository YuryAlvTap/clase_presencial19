class MiClase

    def instancia
        puts 'Método de instancia!'
    end

    def self.clase
        puts 'Método de clase!'
    end
end

  c = MiClase.new.instancia

  a = MiClase.new
  a.instancia  

  print MiClase.clase