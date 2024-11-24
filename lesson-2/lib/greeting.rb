def greeting(name, surname, age)
  if age < 18
    return "Привет, #{name} #{surname}. Тебе меньше 18 лет, но начать учиться программировать никогда не рано."
  else 
    return "Привет, #{name} #{surname}. Самое время заняться делом!"
  end
end
