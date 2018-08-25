require_relative "models/account_number_parser"

file = File.new("spec/fixtures/correct_scans.txt")

account_numbers = AccountNumberParser.parse(file)

puts account_numbers