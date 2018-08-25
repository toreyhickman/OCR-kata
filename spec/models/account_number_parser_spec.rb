require_relative "../../models/account_number_parser"

RSpec.describe AccountNumberParser do
  describe "parsing a file into account numbers" do
    let(:file) { File.new("spec/fixtures/correct_scans.txt", "r") }
    let(:account_numbers) { AccountNumberParser.parse(file) }
    
    it "correctly parses all account numbers in the file" do
      expected_account_numbers = {
        0  => "000000000",
        1  => "111111111",
        2  => "222222222",
        3  => "333333333",
        4  => "444444444",
        5  => "555555555",
        6  => "666666666",
        7  => "777777777",
        8  => "888888888",
        9  => "999999999",
        10 => "123456789"
      }
      
      expected_account_numbers.each do |index, value|
        expect(account_numbers[index]).to eq value
      end
    end
  end
end