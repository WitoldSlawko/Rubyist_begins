movies = {
	panda: 3  
}

puts "Tell me your choice"
choice = gets.chomp

case choice

  when "add"
  	# puts "Added!"
  	puts "Movie title?"
  	title = gets.chomp
  	# if movies[title.to_sym] == nil
    if movies[title.to_sym].nil?
      puts "Rating?"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
    else
      puts "Movie already exist!"
    end

  when "update"
  	# puts "Updated!"
  	puts "Movie title?"
  	title = gets.chomp
  	# if movies[title.to_sym] == nil
    if movies[title.to_sym].nil?
      puts "Movie is not in hash"
    else
      puts "Rating?"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
    end

  when "display"
  	# puts "Movies!"
  	movies.each do |mov, rat|
      puts "#{mov}: #{rat}"
    end

  when "delete"
  	# puts "Deleted!"
  	puts "Movie title?"
  	title = gets.chomp
  	# if movies[title.to_sym] == nil
    if movies[title.to_sym].nil?
      puts "Movie is not in hash"
    else
      movies.delete(title)
    end
  else
    puts "Error!"
    
end