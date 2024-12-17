loop do

  print "Возраст: "; age = gets.chomp

  file = File.open('students.txt')



  if age == '-1'

    puts "Файл result.txt\n#{File.open('result.txt').read}"
    break

  end


  students = file.read.split("\n")

  students.each_with_index do |line, index|

    if line.include? age

      result_file = File.open('result.txt', 'a+')

        result_file.puts(line)

      result_file.close

      students[index] = nil

      file = File.open('students.txt', 'w+')


      students.compact.each do |line|
        file.puts line
      end

    end
    
  end

  students = students.compact

  if students.length == 0 
    puts "Файл result.txt\n#{File.open('result.txt').read}"
    break
  end

  file.close
end