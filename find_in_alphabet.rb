## Accepts name as argument, iterates through the alphabet and prints
## all letters that are within the name

def find_in_alphabet(name)
    new_array = Array.new
    ("a".."z").each { |letter| new_array << letter if name.downcase.include?(letter) }
    puts new_array
end

puts find_in_alphabet("Andrew")
puts find_in_alphabet("Oxana")


def find_in_alphabet(name)
    new_array = Array.new
    ("a".."z").each do |letter|
        if name.downcase.include?(letter)
            new_array << letter
        end
    end
    puts new_array
end

puts find_in_alphabet("Andrew")
puts find_in_alphabet("Oxana")
