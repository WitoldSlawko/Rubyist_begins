class Computer
  
  @@users = {}
  
  def initialize(username, password)
    @username = username
    @password = password
    @@users[username] = password
    @files = {}
  end
  
  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "New file, has been created!"
    puts @files
  end
  
  def self.get_users
    @@users
  end
  
end

my_computer = Computer.new("Wiciu","imba_pass")

puts Computer.get_users
puts my_computer.create("ruby.rb")