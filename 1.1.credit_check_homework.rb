require "pry"

def authorize(card_number)
    transformed_card_number = Array.new
    card_number.to_i.digits.each_with_index do | element, index |
        if index.odd? && (element * 2 >= 10)
            transformed_card_number << (element * 2).digits.sum
        elsif index.odd?
            transformed_card_number << (element * 2)
        else
            transformed_card_number << element
        end
    end

transformed_card_number.sum % 10 == 0 ? print("The card number #{card_number} is valid!") :
                                        print("The card number #{card_number} is invalid!")
end

# TEST CASES
# First test case
puts authorize("4929735477250543")

# Valid test case
puts authorize("5541808923795240")
puts authorize("4024007136512380")
puts authorize("6011797668867828")
puts authorize("342804633855673")

# Invalid test case
puts authorize("5541801923795240")
puts authorize("4024007106512380")
puts authorize("6011797668868728")
puts authorize("342801633855673")
