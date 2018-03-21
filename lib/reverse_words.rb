# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  return if my_words == nil
  # return if my_words == ""
  return my_words if my_words.length <= 1
  index = 0
  j = 0
  while index < my_words.length
    j = index
    if my_words[index] == " "
      index += 1
    else
      while index < my_words.length && my_words[index] != " "
        index += 1
      end # => This finds the word which is equal to my_word[j...index]
      a = 0
      b = (index - j) - 1
      while a < b
        temp = my_words[j + a]
        my_words[j + a] = my_words[j + b]
        my_words[j + b] = temp
        a += 1
        b -= 1
      end
    end
  end
  return my_words
end
