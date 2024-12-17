class File

  def index
    return self.read
  end

  def find(line_id)
    array = self.read.split("\n")
    return array[line_id]
  end

  def where(pattern)

    array = self.read.split("\n")

    result_array = []

    array.each_with_index do |line, index|

      if line.include? pattern
        result_array << index
      end

    end

    return result_array

  end

  def update(id, text)

    array = self.read.split("\n")

    if array.at(id)

      array[id] = text

      File.open(self.path, 'w')

      array.each do |line|
        self.write(line + "\n")
      end

    else
      return nil
    end
    
  end

  def delete(id)

    array = self.read.split("\n")

    if array.at(id)

      array[id] = nil

      File.open(self.path, 'w')

      array.compact.each do |line|
        self.write(line + "\n")
      end
      
    else
      return nil
    end

  end

  def create(name)
    self.print("\n#{name}")
  end

end
