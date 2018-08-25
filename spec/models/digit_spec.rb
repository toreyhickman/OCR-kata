require_relative "../../models/digit"

RSpec.describe Digit do
  describe "converting itself to the correct integer" do
    it "converts to 0" do
      scanned_zero = " _ " +
                     "| |" +
                     "|_|" +
                     "   "
      
      digit = Digit.new(scanned_zero)
      expect(digit.to_i).to eq 0
    end
    
    it "converts to 1" do
      scanned_one = "   " +
                    "  |" +
                    "  |" +
                    "   "

      digit = Digit.new(scanned_one)
      expect(digit.to_i).to eq 1
    end

    it "converts to 2" do
      scanned_two = " _ " +
                    " _|" +
                    "|_ " +
                    "   "

      digit = Digit.new(scanned_two)
      expect(digit.to_i).to eq 2
    end

    it "converts to 3" do
      scanned_three = " _ " +
                      " _|" +
                      " _|" +
                      "   "

      digit = Digit.new(scanned_three)
      expect(digit.to_i).to eq 3
    end

    it "converts to 4" do
      scanned_four = "   " +
                     "|_|" +
                     "  |" +
                     "   "

      digit = Digit.new(scanned_four)
      expect(digit.to_i).to eq 4
    end

    it "converts to 5" do
      scanned_five = " _ " +
                     "|_ " +
                     " _|" +
                     "   "

      digit = Digit.new(scanned_five)
      expect(digit.to_i).to eq 5
    end

    it "converts to 6" do
      scanned_six = " _ " +
                    "|_ " +
                    "|_|" +
                    "   "

      digit = Digit.new(scanned_six)
      expect(digit.to_i).to eq 6
    end

    it "converts to 7" do
      scanned_seven = " _ " +
                      "  |" +
                      "  |" +
                      "   "

      digit = Digit.new(scanned_seven)
      expect(digit.to_i).to eq 7
    end

    it "converts to 8" do
      scanned_eight = " _ " +
                      "|_|" +
                      "|_|" +
                      "   "

      digit = Digit.new(scanned_eight)
      expect(digit.to_i).to eq 8
    end

    it "converts to 9" do
      scanned_nine = " _ " +
                     "|_|" +
                     " _|" +
                     "   "

      digit = Digit.new(scanned_nine)
      expect(digit.to_i).to eq 9
    end
  end
end