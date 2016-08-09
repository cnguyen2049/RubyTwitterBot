require 'net/http'
require 'json'

def getQuote()
  uri = URI('http://api.forismatic.com/api/1.0/?method=getQuote&format=json&lang=en')
  response = Net::HTTP.get(uri)
  obj = JSON.parse(response)
  return obj
end

puts getQuote()
