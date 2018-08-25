class AccountNumber
  def initialize(digits)
    self.digits = digits
  end
  
  def to_s
    digits.reduce("") { |aggregate, digit| "#{aggregate}#{digit.to_i}" }
  end
  
  def ==(other)
    self.to_s == other.to_s
  end
  
  private
  attr_accessor :digits
end
