puts "Your text: "
text = gets.chomp

words = text.split(" ")
frequencies = Hash.new(0)

#puts frequencies["abc"]

words.each { |word| frequencies[word] += 1 }

frequencies.sort_by do |word, count|
  count
end

frequencies.each do |word, count|
  puts word + " " + count.to_s
end