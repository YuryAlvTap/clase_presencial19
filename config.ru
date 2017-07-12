#config.ru
require 'rack'
class MiPrimeraWebApp
 def call(env)
 	puts env
  [200, {'Content-Type' => 'text/html'}, ['<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed</p>']] #200 esta ok 404:pagina no encontrada 500: internal server error
 end
end
run MiPrimeraWebApp.new


