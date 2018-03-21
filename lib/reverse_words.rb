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






# def reverse_words(my_words)
#   return if my_words == nil
#   index = 0
#   pointer = 0
#   j = my_words.length
#   while index < j
#     if my_words[index] == " "
#       my_words = rev_helper(pointer, index-1, my_words)
#       pointer = -1
#     end
#     pointer += 1
#     index += 1
#   end
#   my_words = rev_helper(pointer, index-1, my_words) if pointer > 0
#   # binding.pry
#   return my_words
# end

# def rev_helper(pointer, index, my_words)
#   start_point = index
#   while start_point < pointer / 2
#     temp = my_words[start_point]
#     my_words[start_point] = my_words[(pointer - 1) - start_point]
#     my_words[(pointer - 1) - start_point] = temp
#     start_point += i
#   end
#   return my_words
# end
