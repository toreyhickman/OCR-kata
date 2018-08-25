require_relative "../../models/account_number"

RSpec.describe AccountNumber do
  let(:digits) do
    [
      double(:digit_one, to_i: 1),
      double(:digit_two, to_i: 2),
      double(:digit_three, to_i: 3),
      double(:digit_four, to_i: 4),
      double(:digit_five, to_i: 5),
      double(:digit_six, to_i: 6),
      double(:digit_seven, to_i: 7),
      double(:digit_eight, to_i: 8),
      double(:digit_nine, to_i: 9)
    ]
  end
    
  describe "as a string" do
    it "concatentates it's digits' integer representations" do
      account_number = AccountNumber.new(digits)
      expect(account_number.to_s).to eq "123456789"
    end
  end
  
  describe "equality" do
    it "is equal to objects with the same string representation" do
      account_number = AccountNumber.new(digits)
      expect(account_number).to eq double(:equal_other, to_s: "123456789")
    end
    
    it "is not equal objects with different string representations" do
      account_number = AccountNumber.new(digits)
      expect(account_number).to_not eq double(:unequal_other, to_s: "123456780")
    end
  end
end
