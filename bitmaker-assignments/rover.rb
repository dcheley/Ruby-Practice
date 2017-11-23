class Rover
  attr_accessor :name
  attr_accessor :direction
  attr_accessor :x_location
  attr_accessor :y_location

  def initialize (name, direction, x_location, y_location)
    @name = name
    @direction = direction
    @x_location = x_location
    @y_location = y_location
    puts "Rover #{@name} is now located at #{@x_location}, #{@y_location} facing #{@direction}"
  end

  def status
    puts "Current location is #{self.x_location}, #{self.y_location} facing #{self.direction}"
  end

  def move
    case self.direction
    when "N"
      self.y_location += 1
    when "E"
      self.x_location += 1
    when "S"
      self.y_location -= 1
    when "W"
      self.y_location -= 1
    else
      puts "I am facing #{self.direction}"
    end
  end

  def turn(input)
    case input
    when "L"
      if self.direction == "N"
        self.direction == "W"
      elsif self.direction == "E"
        self.direction == "N"
      elsif self.direction == "S"
        self.direction == "E"
      else self.direction == "W"
        self.direction == "S"
      end
    when "R"
      if self.direction == "N"
        self.direction == "E"
      elsif self.direction == "E"
        self.direction == "S"
      elsif self.direction == "S"
        self.direction == "W"
      elsif self.direction == "W"
        self.direction == "N"
      end
    else
      puts "Does not compute"
    end
  end

  def instructions
    self.status
    puts 'Type "rover.move" to move forward, "rover.turn("L")" to turn left and "rover.turn("R")" to turn right.'
  end
end
