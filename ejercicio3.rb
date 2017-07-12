#Crear una clase Car que herede de Vehicle El constructor de Car, además de heredar las propiedades de Vehicle
#,debe incluir un contador de instancias de Car.
#Crear un método de clase en Car que devuelva la cantidad de instancias.
#El método engine_start heredado debe además imprimir 
#'El motor se ha encendido!'.
#Instanciar 10 Cars.
#Consultar la cantidad de instancias generadas de Car  mediante el método de clase creado

class Vehicle
  attr_accessor :model, :year
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
  end
end

class Car < Vehicle
  @@cont = 0  #variable de clase
  def initialize
    @@cont += 1
  end

  def engine_start
     super
     puts "el motor esta encendido!!"
  end

  def self.dev_cont
  	@@cont
  end

end

10.times do |num|
  Car.new.engine_start
end

puts "Cantidad de instancias: #{Car.dev_cont}"






