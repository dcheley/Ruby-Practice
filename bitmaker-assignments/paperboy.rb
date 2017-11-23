class Paperboy
  attr_accessor :name
  attr_accessor :experience #Number of Houses
  attr_reader :earnings
  attr_accessor :quota

  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
    @quota = 0
  end

  def quota
    quota = 50 + (1/2)*@experience #50 papers min, plus half papers ever delievered (experience)
    puts quota
  end

  def deliver(start_address, end_address)
    total_houses = start_address - end_address
    @experience = total_houses + self.experience.to_i #add to paperboy's experience
    #Calculate Earnings
    if total_houses < quota
      @earnings = 0.25 * total_houses
      puts @earnings
    else
      extra_houses = total_houses - quota
      @earnings = 0.5 * extra_houses + 0.25 * quota
      puts @earnings
    end
  end

  def report
    puts "Hi, I am #{self.name}. I have delivered #{self.experience} papers and earned #{self.earnings}. "
  end
end
