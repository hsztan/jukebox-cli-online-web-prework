songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |name, index|
    puts "#{index + 1}. #{name}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  gets.chomp(id)
  if songs.include?(id) || id.to_i <= songs.length
    if id.to_i != 0
      puts "Playing #{id}"
    else
      puts "Playing #{songs[id.to_i - 1 ]}"
    end
  else
    puts "Invalid input, please try again"
  end
end

list(songs)
play(songs)
