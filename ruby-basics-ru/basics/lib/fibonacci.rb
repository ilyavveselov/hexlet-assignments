# frozen_string_literal: true

# BEGIN
def fibonacci(n)
    result = 0
    if (n.zero?) || (n == 1)
      result = n
    elsif n.negative?
      result = nil
    else
      results = [0, 1]
      2.upto(n) do |num|
        results << results[num-1] + results[num-2]
      end
      result = results.last
    end
    result
end
puts fibonacci(2)
# END
