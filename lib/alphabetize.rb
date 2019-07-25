require 'pry'

ESPERANTO_ALPHABET = " abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def to_number (string)
  letter_array = ESPERANTO_ALPHABET.split('')
  array = string.split('')
  array.map do|letter| 
    letter_array.find_index(letter)
  end
end

def to_esperanto (array)
  letter_array = array.map{|number| ESPERANTO_ALPHABET[number]}
  letter_array
end

def alphabetize(arr)
  temp_array1 = arr.map do|string| 
    to_number(string)
  end
  temp_array2 = temp_array1.sort()
  temp_array2.map do|number|
   to_esperanto(number).join('')
  end
end