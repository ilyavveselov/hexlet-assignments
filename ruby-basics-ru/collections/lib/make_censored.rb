# frozen_string_literal: true

# rubocop:disable Style/For

def make_censored(text, stop_words)
  # BEGIN
  result = ''
  text.split.each do |word|
    result += (stop_words.include? word) ? '$#%! ' : word + ' '
  end
  result.chop
  # END
end
# rubocop:enable Style/For
