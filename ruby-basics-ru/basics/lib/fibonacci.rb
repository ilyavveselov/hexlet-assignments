# frozen_string_literal: true

# BEGIN
def fibonacci(n)
    result = 0
    if (n.zero?) || (n == 1)
      result = n
    elsif n.negative?
      result = nil
    else
      results = [1, 1, 2]
      3.upto(n) do |num|
        results << results[num-1] + results[num-2]
      end
      result = results.last
    end
    result
end
# END
