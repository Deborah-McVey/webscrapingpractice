class CLI
  def start
    puts "Let's find a job in Canada!"
    puts "What is your location?"
    location = gets.strip
    puts "Find a job in #{location}!"
  end

  def get_input
    gets.strip
  end
end
