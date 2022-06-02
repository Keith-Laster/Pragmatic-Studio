require_relative 'auditable'

module StudioGame

class LoadedDie
  attr_reader :number
  include Auditable 
  
  def roll
    numbers = [1, 1, 2, 5, 6, 6]
    @number = numbers.sample
    audit
    @number
  end
end

end