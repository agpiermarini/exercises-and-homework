require "pry"

def authenticate(card_number)                                                    # method to run a luhn check-summing algorithm to authenticate credit card numbers
    transformed_card_number = Array.new                                          # initializes new array to accept numbers transformed according to the luhn algorithm
    card_number.to_i.digits.each_with_index do | element, index |                # iterates over array of reverse-ordered card numbers, runs luhn algorithm block
        if index.odd? && (element * 2 >= 10)                                     # if index is odd and element times two is greater than or equal to 10
            transformed_card_number << (element * 2).digits.sum                  # push the sum of the two integers comprising the number to array (e.g. 14 pushes 5, 18 pushes 9)
        elsif index.odd?                                                         # if index is odd (but element times two is less than 10)
            transformed_card_number << (element * 2)                             # push element times two to the array
        else
            transformed_card_number << element                                   # else push element in original collection to array
        end
    end

transformed_card_number.sum % 10 == 0 ?
    print("The card number #{card_number} is valid!") :                          # if sum of collection mod 10 is 0, card number is valid; else, card number is invalid
    print("The card number #{card_number} is invalid!")

end

# TEST CASES
# First test case
puts authenticate("4929735477250543")

# Valid test case
puts authenticate("5541808923795240")
puts authenticate("4024007136512380")
puts authenticate("6011797668867828")
puts authenticate("342804633855673")

# Invalid test case
puts authenticate("5541801923795240")
puts authenticate("4024007106512380")
puts authenticate("6011797668868728")
puts authenticate("342801633855673")
