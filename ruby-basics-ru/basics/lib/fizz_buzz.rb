# frozen_string_literal: true

# BEGIN
def fizz_buzz(a = 0, b = 0)
    if b > a || b == a
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
        result.chop
    else
        nil
    end
end
puts fizz_buzz(7, 7).size
# END
