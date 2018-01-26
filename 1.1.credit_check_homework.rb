require "pry"

def authorize(card_number)
    transformed_card_number = []
    card_number.to_i.digits.each_with_index do | element, index |
        if index.odd? && (element * 2 >= 10)
            total = 0
            number_doubled = element * 2
            number_doubled.digits.each { |element| total += element }
            transformed_card_number << total
            #binding.pry
        elsif index.odd?
            transformed_card_number << (element * 2)
        else
            transformed_card_number << element
        end
    end

    total = 0
    transformed_card_number.each { |value| total += value }
    if total % 10 == 0
        print "The card number #{card_number} is valid!"
    else
        print "The card number #{card_number} is invalid!"
    end
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



# # {value.collect! { |element| (element == "hello") ? "hi" : element }
