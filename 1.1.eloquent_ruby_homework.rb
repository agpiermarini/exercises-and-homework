## Chapter Three
# 1. Using variable method arguments

def first_and_last( *words )
    puts words[0], words[-1]
end

puts first_and_last("First", "word", "always", "comes", "before", "the", "last")


# 2. Using Map and Join

animals = %w{ dog cat goat capybara }

def capitalize_array(array)
    puts array.map { |item| item.capitalize! }
end

puts capitalize_array(animals)


def join_items_in_array(array)
    puts array.join(' ')
end

puts join_items_in_array(animals)


# 3. Dangers of ! Methods

def dangers_of_bang_methods()

    puts "\tMethods whose names end in a !, when called on collection (e.g. an array) will change the underlying collection of items.
    For instance, array.sort will return array sorted, but the underlying collection of objects in array will remain in their original order.
    Including a bang (!) after sort! will, in essence, overwrite the original collection such that calling array will there on in return the
    sorted collection."

    puts "\n\tUsing bang methods has its advantages and disadvantages. If you need to reference a collection in a particular form other than
    how it was originally created, using a bang method will save you from having to repeatedly call methods like #reverse or #sort. The disadvantage
    of using bang methods is that, in certain instances, such as when using #each or #map (methods invoked to iterate over an array), the array
    can be changed out from underneath the block. The example offered in Eloquent Ruby is using map to delete items in an array that meet
    a certain criteria; if you are iterating over the array while at the same time deleting objects in that array, using bang method would mean that the
    the objects are shifting position."
end

puts dangers_of_bang_methods


## Chapter Four
# 1. Special Characters in Strings

def special_characters_in_strings()

    puts "\tSpecial characters in strings are characters that are also used as delimiters/literals. To escape in a string is to signal
    to ruby that you do not want the default interpretation of the character. For instance, if you want to embed a quote in a string,
    absent a backslash, ruby might confuse the quotation mark as an attempt to close the string."

    puts "\n\tThree characters that have to be escaped when written in a string are: \\, \", and \'."

    puts ""

    puts "Name: Andrew\nHeight: 6'1\""
end

puts special_characters_in_strings


# 2. Splitting strings

def split_name_and_height()

    name_and_height = "Name: Andrew\nHeight: 6'1\""
    name_and_height_array = name_and_height.split('\n')
    puts name_and_height_array

end

puts split_name_and_height


# 3. Poking at Bytes

def bytes_in_name()

    name = "Andrew"
    name.each_byte { |letter| puts letter }
nil
end

puts bytes_in_name
