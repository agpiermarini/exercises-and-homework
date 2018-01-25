# Branching Exercises
# 1. Basic puts/gets
def gets_puts()
    puts "Type a message that you would like to print to the terminal, then press enter. > "
    message = gets.chomp
    puts "You typed: #{message}."
end

puts gets_puts

# 2. Basic Branching
def gets_puts_even_or_odd()
    puts "Type a message that you would like to print to the terminal, then press enter. > "
    message = gets.chomp
    if message.length % 2 == 0
        puts "You typed: #{message}. It has an EVEN number of characters"
    else
        puts "You typed: #{message}. It has an ODD number of characters"
    end
end

puts gets_puts_even_or_odd

#3. Multi-pronged Branching

def consonant_or_vowel()
    vowel = ["a", "e", "i", "o", "u"]
    puts "Type a message. > "
    message = gets.chomp
    if message[-1] == "y"
        puts "DON'T KNOW!"
    elsif vowel.include?(message[-1])
        puts "VOWEL!"
    else
        puts "CONSONANT!"
    end
end

puts consonant_or_vowel

# Looping Exercises
# 1. Easy Looping
def easy_looping(number)
    number.times { puts "Line" }
return nil
end

puts easy_looping(5), ""


# 2. Looping with a Condition
def even_or_odd(number)
    count = 0
    number.times do
        count += 1
        if count % 2 == 0
            puts "Line is even"
        else
            puts "Line is odd"
        end
    end
return nil
end

puts even_or_odd(5), ""

#3. Three Loops
def three_loops_times(number)
    count = 0
    number.times do
        count += 1
        puts "This is my output on line #{count}"
    end
    puts ""
return nil
end

puts three_loops_times(5)

def three_loops_until(number)
    count = 0
    until count == number
        count += 1
        puts "This is my output on line #{count}"
    end
    puts ""
return nil
end

puts three_loops_until(5)

def three_loops_while(number)
    count = 0
    while count < number
        count += 1
        puts "This is my output on line #{count}"
    end
    puts ""
return nil
end

puts three_loops_while(5)

# 4. rando_guesser
def rando_guesser()
    rando_number = rand(1..10)
    guess = nil
    while guess != rando_number do
        guess = rand(1..10)
        puts "Guess is #{guess}", "Guess again!"
    end
    puts "You win!"
end

puts rando_guesser
