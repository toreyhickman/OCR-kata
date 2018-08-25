require_relative "../../models/account_number"

RSpec.describe AccountNumber do
  describe "as a string" do
    it "concatentates it's digits' integer representations" do
      digits = [
        double(:digit_one, to_int: 1),
        double(:digit_two, to_int: 2),
        double(:digit_three, to_int: 3),
        double(:digit_four, to_int: 4),
        double(:digit_five, to_int: 5),
        double(:digit_six, to_int: 6),
        double(:digit_seven, to_int: 7),
        double(:digit_eight, to_int: 8),
        double(:digit_nine, to_int: 9)
      ]
      
      account_number = AccountNumber.new(digits)
      expect(account_number.to_s).to eq "123456789"
    end
  end
end