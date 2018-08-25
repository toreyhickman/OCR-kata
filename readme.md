#Bank OCR Kata

This is a solution to a coding challenge (see [challenge](http://codingdojo.org/kata/BankOCR/)).

To see account numbers generated from a hardcoded fixture file, run `ruby runner.rb`.

### Next Steps
#### User Story 2
To validate a given account number, I would lean toward adding a couple instance methods to the `AccountNumber` class.  I'd probably add a private `#checksum` method to perform the actual calculation and a public `#valid?` method that would indicate whether or not the checksum passed.

#### User Story 3
Before writing account numbers to a file, I'd need to be able to know the status of an account number.  Is it illegible, invalid, or ok.

To determine whether an account number was illegible, I'd check if any of its digits were illegible.  That would require adding a `#legible?` method to the `Digit` class.  To check whether a digit was legible, I could reuse the `Digit#to_i` method; if it returns falsey, then the digit is illegible.

If an account number is legible, I could determine its validity with the `AccountNumber#valid?` method from User Story 2.  At that point, I could generate a status for the account number.

To write to the account numbers to a file, I would probably create a new module that accepts a list of account numbers and writes them to a file.  The `AccountNumber` model can already represent its digits as a string, but that would need to be updated to handle illegible digits.  I'd probably add a `Digit#to_s` method that represents illegible digits as question marks.  `AccountNumber#to_s` would then be updated to use the string form of a digit.

At that point, the file writer could write each account number's string representation to the file, appending a representation of the account number's status to the end of each line.  For example, if an account number was illegible, the file writer would append `"ILL"` to the end of the line.

#### User Story 4
This behavior seems a little too much to add to one of the existing models, so I'd probably add a module with a method that accepts an instance of `AccountNumber` and returns a list of valid alternatives.

To generate the list of alternatives, I'd need to find alternatives for each digit in an account number.  The `Digit` class could supply a list of all the scan representations for digits 0 - 9.  Another object could compare a `Digit` instance's scan to the valid representations and determine which the digit could be if one character were changed.

Once all the alternatives for each digit are known, they could be combined into alternative account numbers, which could be checked to see if they're valid.  If none of the alternatives are valid, the file writer could note that the number is illegible.  If there are multiple valid alternatives, the file writer could mark the number as `"AMB"`.  And if there's only one valid alternative, the file writer would write that alternative to the file.