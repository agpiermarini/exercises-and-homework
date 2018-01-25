require "pry"

# Original case
card_number1 = "4929735477250543"

# Valid test cases
card_number2 = "5541808923795240"
card_number3 = "4024007136512380"
card_number4 = "6011797668867828"

# Invalid test cases
card_number5 = "5541801923795240"
card_number6 = "4024007106512380"
card_number7 = "6011797668868728"

def credit_check(number)
    index = number.length
    number_luhn = number.split("").map { |i| i.to_i }
    until index == 0 do
        index -= 2
        blah = number_luhn[index] * 2
        if blah >= 10
            #number_luhn[index] = blah[0] + blah[1]  # this is not producing the result needed
            sum = 0
            blah.divmod(10).map { |value| sum += value}
            number_luhn[index] = sum
        else
            number_luhn[index] = blah
        end
    end
    print number_luhn
    total = 0
    number_luhn.each { |value| total += value }
    if total % 10 == 0
        print "The number is valid!"
    else
        print "The number is invalid!"
    end
end
binding.pry

puts credit_check(card_number1)
puts credit_check(card_number2)
puts credit_check(card_number3)
puts credit_check(card_number4)
puts credit_check(card_number5)
puts credit_check(card_number6)
puts credit_check(card_number7)

# {value.collect! { |element| (element == "hello") ? "hi" : element }
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"
