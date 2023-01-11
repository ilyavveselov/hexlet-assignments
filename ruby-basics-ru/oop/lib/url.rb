# frozen_string_literal: true

# BEGIN
require 'forwardable'
require 'uri'
class Url
  attr_accessor :url

  include Comparable
  extend Forwardable

  def_delegators :@url, :scheme, :host
  def_delegator :@url, :==

  def initialize(url)
    @url = URI(url)
  end


  def query_params
    url_s = url.to_s
    if url_s.include? '?'
      params = url_s.split('?')[1].split('&')
      params.each_with_object({}) do |param, acc|
        param_split = param.split('=')  
        acc[param_split[0].to_sym] = param_split[1]
      end
    else
      {}
    end
  end

  def query_param(key, default_value = nil)
    query_params = query_params()
    query_params.key?(key) ? query_params[key] : default_value
  end

  def inspect_url
    self.url_string
  end

  def ==(other)
    self.inspect_url == other.inspect_url ? true : false
  end
  
  private
  def url_string
    "#{url}"
  end
  
end
url1 = Url.new 'https://google.com:80'
url2 = Url.new 'https://google.com:80?a=b&c=d&lala=value'

puts url1 == url2
# END
