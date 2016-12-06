qclass WordGame

  attr_reader :number_of_tries, :guessed_letters, :correct_letters

    def initialize(secret_word)
      @secret_word =  secret_word
      @correct_letters = @secret_word.split('')
      @guessed_letters = Array.new(@secret_word.length, '_')
      @number_of_tries = @secret_word.length
    end
    
    def guess_letter(letter)
      correct_indices = []
      @correct_letters.each_with_index do |correct_letter, index|
        if letter == correct_letter
          correct_indices << index
        end
      end
      
      correct_indices.each do |index|
        @guessed_letters[index] = letter
      end
      
      @number_of_tries -= 1
      
      if correct_indices.length > 0
        return true
      else
        return false
      end
    end
    
end

class UserInput

  def initialize
  end
  
  def start_game
    ask_for_magic_word
    ask_for_letter
  end
  
  def ask_for_magic_word
    puts "Player 1: Please input magic word"
    @secret_word = gets.chomp
    @number_of_tries = @secret_word.length
    @word_game = WordGame.new(@secret_word)
  end
  
  def ask_for_letter
    number_of_tries = @word_game.number_of_tries
    while number_of_tries >= 0
      number_of_tries = @word_game.number_of_tries
      if number_of_tries == 0
        return puts "Sorry GAME OVER"
      end
      
      puts "Player 2: You have #{number_of_tries} left. Guess a letter."
      letter = gets.chomp
      if letter.length > 1
        puts "only 1 letter please"
      end
      correct = @word_game.guess_letter(letter)
      guessed_letters = @word_game.guessed_letters
      
      if correct && guessed_letters == @word_game.correct_letters
        return puts "You've won"
      elsif correct
        puts "Good guess! #{guessed_letters.join(' ')}"
      else
        puts "WRONG. You have #{number_of_tries} guesses left"
        puts guessed_letters.join(' ')
      end
    end
  end
  
end

game = UserInput.new
game.start_game