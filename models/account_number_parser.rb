require_relative "account_number"
require_relative "digit"

module AccountNumberParser
  DIGIT_INDEX_RANGES = [
    0..2,
    3..5,
    6..8,
    9..11,
    12..14,
    15..17,
    18..20,
    21..23,
    24..26
  ]
  
  class << self 
    def parse(file)
      file.readlines.each_slice(4).map { |scan| build_account_number(scan[0..2]) }
    end
    
    private
  
    def build_account_number(three_line_scan)
      AccountNumber.new(parse_digits(three_line_scan))
    end
    
    def parse_digits(three_line_scan)
      digit_representations(three_line_scan).map { |rep| Digit.new(rep) }
    end
    
    def digit_representations(three_line_scan)
      DIGIT_INDEX_RANGES.map do |index_range|
        three_line_scan.map { |line| line[index_range] }.join()
      end
    end
  end
end