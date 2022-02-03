class Question 
    attr_reader :number1, :number2
    def initialize
        @number1 = rand(21)
        @number2 = rand(21)
    end
  
    def qs
        "#{number1} * #{number2} = "
    end
end