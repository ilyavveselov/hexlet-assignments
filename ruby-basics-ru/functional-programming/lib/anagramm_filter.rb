# frozen_string_literal: true

# BEGIN
def anagramm_filter(word, check_list)
  result = []
  word_array = word.chars.sort
  check_list.each { |item| result << item if word_array == item.chars.sort}
  result
end
puts anagramm_filter('abba', %w[aabb abcd bbaa dada]) # ['aabb', 'bbaa']
# END
