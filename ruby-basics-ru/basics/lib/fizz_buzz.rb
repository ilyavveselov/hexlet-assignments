# frozen_string_literal: true

# BEGIN
def fizz_buzz(a, b)
    result = ''
    a.upto(b) do |num|
     if (num.to_f % 3).zero? && (num.to_f % 5).zero?
      result += 'FizzBuzz '
     elsif (num.to_f % 3).zero?
      result += 'Fizz '
     elsif (num.to_f % 5).zero?
      result += 'Buzz '
     else
      result += num.to_s + " "
     end
    end
    result[0..result.size-1]
end
# END
