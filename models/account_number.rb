class AccountNumber
  def initialize(digits)
    self.digits = digits
  end
  
  def to_s
    digits.reduce("") { |aggregate, digit| "#{aggregate}#{digit.to_int}" }
  end
  
  private
  attr_accessor :digits
end