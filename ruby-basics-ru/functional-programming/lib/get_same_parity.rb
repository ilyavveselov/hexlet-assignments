# frozen_string_literal: true

# BEGIN
def get_same_parity(array)
  if array.any?
    array.first.even? ? array.filter { |item| item.even? } : array.filter { |item| item.odd? }
  else
    []
  end
end
# END
