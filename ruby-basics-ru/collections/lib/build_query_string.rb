# frozen_string_literal: true

# rubocop:disable Style/For
# BEGIN
def build_query_string(hash)
  hash = hash.sort.to_h
  attr_pairs = []
  hash.each_pair do |key,value|
    attr_pairs << "#{key}=#{value}"
  end
  attr_pairs.join('&')
end
puts build_query_string({test: 'hi'})
# END
# rubocop:enable Style/For
