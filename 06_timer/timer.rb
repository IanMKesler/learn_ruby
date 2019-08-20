class Timer
  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def seconds 
    @seconds
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def time_string
    increment
    "#{format(@hours)}:#{format(@minutes)}:#{format(@seconds)}"
  end

  def increment
    @hours = @seconds/3600
    @seconds = @seconds%3600

    @minutes = @seconds/60
    @seconds = @seconds%60
  end

  def format(number)
    first_digit = (number / 10).to_s
    second_digit = (number % 10).to_s
    first_digit + second_digit
  end
end
