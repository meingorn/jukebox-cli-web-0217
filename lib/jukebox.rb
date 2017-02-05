require "pry"


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

def play(songs)
    puts "Please enter a song name or number:"
    choice = prompt_and_check(songs)

    if choice != nil
      puts "Playing #{choice}"
    else
      invalid_input
      message = prompt_and_check(songs)
  end
end

def list(songs)
  songs.each_with_index do |s, i|
    puts "#{i+1}. #{s}"
  end
end

def exit_jukebox
  puts "Goodbye!"
end

def prompt_and_check(songs)
  user_input = gets.chomp
  match = nil
  songs.each_with_index do |s, i|
    if user_input == s || user_input.to_i == i+1
      match = s
    end
  end
  match
end

def invalid_input
  puts "Invalid input, please try again"
end

def run(songs)
    command = nil
    help
    while command != "exit" do
      puts "Please enter a command:"
      command = gets.chomp
      case command
      when "help"
        help
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "exit"
        exit_jukebox
      else
        invalid_input
      end
    end
  end
