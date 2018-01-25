# First version
def superfizzbuzz()
    count = 0
    until count == 1000 do
        count += 1
        if count % 3 == 0 && count % 5 == 0 && count % 7 == 0
             "SuperFizzBuzz"
        elsif count % 3 == 0 && count % 7 == 0
            puts "SuperFizz"
        elsif count % 5 == 0 && count % 7 == 0
            puts "SuperBuzz"
        elsif count % 3 == 0 && count % 5 == 0
            puts "FizzBuzz"
        elsif count % 3 == 0
            puts "Fizz"
        elsif count % 5 == 0
            puts "Buzz"
        elsif count % 7 == 0
            puts "Super"
        else
            puts count
        end
    end
end

puts superfizzbuzz

# Second version
def superfizzbuzz2()
    count = 0
    until count == 1000
        count += 1
        if count % 3 != 0 && count % 5 != 0 && count % 7 != 0
            puts count˚
        else
            count % 7 == 0 ? print("Super") : print("")
            count % 3 == 0 ? print("Fizz") : print("")
            count % 5 == 0 ? print("Buzz") : print("")
            puts ""
        end
    end
return nil
end

puts superfizzbuzz2


# Third version
def superfizzbuzz3()
    (1001).times do |count|
        if count % 3 != 0 && count % 5 != 0 && count % 7 != 0
            puts count
        else
            count % 7 == 0 ? print("Super") : print("")
            count % 3 == 0 ? print("Fizz") : print("")
            count % 5 == 0 ? print("Buzz") : print("")
            puts ""
        end
    end
return nil
end

puts superfizzbuzz3
