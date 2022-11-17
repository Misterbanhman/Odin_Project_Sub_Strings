require 'pry-byebug'

$answer_array = []

def sub_strings(words,array)
    alphabet = ('a'..'z').to_a
    alphabet.push(" ")

    new_words = remove_symbols(words,alphabet)
    # binding.pry
    array.each do |string|
        if new_words.include?(string)
            $answer_array.push(string)
        end
    end
    p $answer_array.tally
end

def remove_symbols(string,alphabet)
    string.downcase!
    new_array = []

    array_of_string = string.split('')
    array_of_string.each do |character|
        if alphabet.include?(character) == true
            new_array.push(character)
            # binding.pry
        end
    end
    return new_array.join
end


substrings("Howdy partner, sit down! How's it going?", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])
