def conversation
  puts "Hello"
  yield
  puts "Goodbye"
end

conversation { puts "Good to meet you!"}


def n_times(number) 
  1.upto(number) |count|
  yield count
end
end