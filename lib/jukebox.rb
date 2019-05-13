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
  hashSongs = Hash.new

  songs.each_with_index do |song, index|
    hashSongs[song] = (index + 1)
  end
   hashSongs.each do |key, value|
    puts "#{value}. #{key}"
  end
end


def play(songs)
  puts "Please enter a song name or number:"
  userChoice = gets.chomp.to_s

  songs.each do |index,song|
    if song == userChoice || songs[index.to_i] == userChoice
      return "Playing #{song}"
    end
  end
  puts "Invalid input, please try again"
  return play(songs)
end


def exit_jukebox
  return puts "Goodbye"
end


def run
  help()
  puts "Please enter a command:"
  command = gets.chomp.to_s

  while command != 'exit'
    if command == 'list'
      list(songs)

    elsif command  == 'play'
      play(songs)

    elsif command == 'help'
      help()

    else
      puts "Invalid command."
    end
  end
  exit_jukebox()
end
