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
    modulo = @seconds % 3600
    self.padded(@seconds / 3600) + ':' + self.padded(modulo / 60) + ':' + self.padded(modulo % 60)
  end
end
