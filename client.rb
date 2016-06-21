require 'drb/drb'
DRb.start_service

bot = DRbObject.new(nil, 'druby://localhost:2222')

3.times do
  puts bot.get_time
  sleep 2
end

s = "The quick brown fox jumps over the lazy dog"
puts bot.count(Marshal.dump(s))

puts  bot.mylambda("->(arg) { arg*2 }", [4])
