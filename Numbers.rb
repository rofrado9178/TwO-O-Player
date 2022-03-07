class Numbers

  attr_accessor :num1, :num2
  attr_reader :answer

  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
    @answer = @num1 + @num2
  end

  # def reset_numbers
  #   @num1 = rand(1..20)
  #   @num2 = rand(1..20)
  #   @answer = @num1 + @num2
  # end

end