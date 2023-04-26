#Se pide crear el programa juego.rb, donde el usuario pasará como argumento piedra, papel o tijera, y el programa escogerá una opción al azar.

25.times {print "-"} 
puts
puts "Piedra, Papel o Tijera"
25.times {print "-"}
puts
puts
puts "Disfruta desafiando a la computadora"
puts
puts "Escribe tu nombre"
# utilizamos la variable user_name para guardar el nombre del usuario
# utilizamos la variable user_choice para guardar la respuesta del usuario
# utilizamos el downcase para que la respuesta siempre llegue en minusculas
user_name = gets.chomp

puts "Para comenzar elige entre piedra, papel o tijera"
user_choice = gets.chomp.downcase
# utilizamos random_number para guardar la respuesta del computador
# utilizamos rand para que nos de un numero del 1 al 3 al azar
random_number = rand(1..3)
# utilizamos un if para que de acuerdo a la respuesta se transforme en piedra o papel o tijera y guardamos en computer_choice
puts
if random_number == 1
    computer_choice = "piedra"
elsif random_number == 2
    computer_choice = "papel"
else
    computer_choice = "tijera"
end
#al tener las dos respuestas imprimimos las respuestas 
puts "#{user_name} eligio:"
puts user_choice
puts
puts "Computadora eligio:"
puts computer_choice
puts
# utilizamos un if para compara opciones con || o &&
if user_choice == computer_choice
    puts "¡Empate!"
elsif (user_choice == "piedra" && computer_choice == "tijera") ||
        (user_choice == "papel" && computer_choice == "piedra") ||
        (user_choice == "tijera" && computer_choice == "papel")
    puts "¡Ganaste!"
else
    puts "¡Perdiste!"
end
puts