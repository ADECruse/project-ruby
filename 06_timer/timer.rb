class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def padded(n)
    if n < 10
      '0' + n.to_s
    else
      n.to_s
    end
  end

  def time_string
    if @seconds == 0
      "00:00:00"
    else
      #hour = (@seconds/3600)
      #remainder = @seconds%3600
      timer_display = hour.padded(@seconds/3600) + ':'

    end

  end
end
