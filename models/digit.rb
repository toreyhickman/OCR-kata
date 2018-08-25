class Digit
  SCANNED_INTEGER_REPRESENTATIONS = {
    " _ " +
    "| |" +
    "|_|" +
    "   " => 0,
    
    "   " +
    "  |" +
    "  |" +
    "   " => 1,
    
    " _ " +
    " _|" +
    "|_ " +
    "   " => 2,
    
    " _ " +
    " _|" +
    " _|" +
    "   " => 3,

    "   " +
    "|_|" +
    "  |" +
    "   " => 4,

    " _ " +
    "|_ " +
    " _|" +
    "   " => 5,

    " _ " +
    "|_ " +
    "|_|" +
    "   " => 6,

    " _ " +
    "  |" +
    "  |" +
    "   " => 7,

    " _ " +
    "|_|" +
    "|_|" +
    "   " => 8,

    " _ " +
    "|_|" +
    " _|" +
    "   " => 9,
  }
  
  def initialize(scan)
    self.scan = scan
  end
  
  def to_i
    SCANNED_INTEGER_REPRESENTATIONS[scan]
  end
  
  private
  attr_accessor :scan
end