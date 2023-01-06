# frozen_string_literal: true

# BEGIN
def reverse(word)
    result = ''
    word.each_char do |c|
        result = "#{c}#{result}"
    end
    result
end
# END
