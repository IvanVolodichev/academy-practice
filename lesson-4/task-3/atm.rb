current_balance = File.open('balance.txt').read.to_f

loop do

  puts "Выберите действие:\nD - Внести деньги\nW - Вывести деньги\nB - Посмотреть баланс\nQ - Выйти"

  user_choice = gets.chomp.upcase

  case user_choice
  when 'D'

    puts "Какую сумму внести?\nВы можете внести 10, 50 либо 100 рублей"
    user_input = gets.chomp.to_f

    if user_input == 10.0 || user_input == 50.0 || user_input == 100.0
      
      current_balance += user_input
      File.open('balance.txt', 'w').puts(current_balance)
      puts "Сумма успешно внесена!"
      
    else
      puts "Сумма неккоректна! Корректные суммы - 10, 50, 100 рублей"
    end

  when 'W'

    puts "Какую сумму вы хотите снять?\n"
    user_input = gets.chomp.to_f

    if(user_input > current_balance)

      puts "Вы не можете снять сумму, превышающую ваш баланс"

    elsif(user_input < 0)

      puts "Сумма должна быть больше нуля"

    else
      current_balance -= user_input
      File.open('balance.txt', 'w').puts(current_balance)
      puts "Успешно!"
    end

  when 'B'

    puts "Ваш баланс - #{current_balance}"

  when 'Q'
    return
  else
    puts "Такой команды не существует!"
  end
end