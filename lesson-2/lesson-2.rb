def greeting(name, surname, age)

    if age < 18
      puts "Привет. #{name} #{surname}. Тебе меньше 18 лет, но начать учиться программировать никогда не рано."
    elsif 
      puts "Привет, #{name} #{surname}. Самое время заняться делом!"
    end
  
end

def foobar(num_1, num_2)
  return num_1 == 20 || num_2 == 20 ? num_2 : num_1 + num_2
end
