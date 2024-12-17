def ask_for_count
  print "Сколько покемонов добавить? "
  gets.chomp.to_i
end

def ask_for_details(index)
  puts "#{index + 1}-й Покемон:"

  print "Имя: "
  name = gets.chomp

  print "Цвет: "
  color = gets.chomp

  {
    'name' => name,
    'color' => color
  }
end

def add_pokemon
  pokemons = []

  count = ask_for_count()

  count.times do |index|

    pokemons.push(ask_for_details(index))
  
  end

  pokemons
end