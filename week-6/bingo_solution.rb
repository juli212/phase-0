# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  # define method bingo_call
    # make array called letters consisting of BINGO
    # create instance variable called_letter that is equal to a random letter in BINGO array
    # create instance variable called_number that is equal to a random number from 1-100
    # create instance variable bingo_call that equals called_letter plus called_number
    # return bingo_call

# Check the called column for the number called.
  #fill in the outline here
    # if called_letter = B, check each sub-array at index 0 to see if it matches called_number
    # if called_letter = I, check each sub-array at index 1 to see if it matches called_number
    # if called_letter = N, check each sub-array at index 2 to see if it matches called_number
    # if called_letter = G, check each sub-array at index 3 to see if it matches called_number
    # if called_letter = O, check each sub-array at index 4 to see if it matches called_number

# If the number is in the column, replace with an 'x'
  #fill in the outline here
    # if called_number equals one of the numbers in the called column, replace integer in that sub-array with an X

# Display a column to the console
  #fill in the outline here
    # to display column B, puts index 0 of each sub-array
    # to display column I, puts index 1 of each sub-array
    # to display column N, puts index 2 of each sub-array
    # to display column G, puts index 3 of each sub-array
    # to display column O, puts index 4 of each sub-array

# Display the board to the console (prettily)
  #fill in the outline here
    # return each sub-array as a string with spaces on a separate line

# Initial Solution

class BingoBoard
  attr_accessor :bingo_board

  def initialize(board)
    @bingo_board = board
  end

  def bingo_call(letters)
    @called_letter = letters.sample
    @called_number = rand(1..100)
    @bingo_call = @called_letter + @called_number.to_s 
    p "The next Bingo square is #{@bingo_call}!"
  end

  # def check_number(@bingo_board)
  #   if @called_letter == "B"
  #     if @bingo_board[0][0] == @called_number
  #       @bingo_board[0][0] == "X"
  #     elsif @bingo_board[1][0] == @called_number
  #       @bingo_board[1][0] == "X"
  #     elsif @bingo_board[2][0] == @called_number
  #       @bingo_board[2][0] == "X"
  #      elsif @bingo_board[3][0] == @called_number
  #       @bingo_board[3][0] == "X"
  #      elsif @bingo_board[4][0] == @called_number
  #       @bingo_board[4][0] == "X"
  #     end
  #   end
  #   if @called_letter == "I"
  #     if @bingo_board[0][1] == @called_number
  #       @bingo_board[0][1] == "X"
  #     elsif @bingo_board[1][1] == @called_number
  #       @bingo_board[1][1] == "X"
  #     elsif @bingo_board[2][1] == @called_number
  #       @bingo_board[2][1] == "X"
  #      elsif @bingo_board[3][1] == @called_number
  #       @bingo_board[3][1] == "X"
  #      elsif @bingo_board[4][1] == @called_number
  #       @bingo_board[4][1] == "X"
  #     end
  #   end
  #   if @called_letter == "N"
  #     if @bingo_board[0][2] == @called_number
  #       @bingo_board[0][2] == "X"
  #     elsif @bingo_board[1][2] == @called_number
  #       @bingo_board[1][2] == "X"
  #     elsif @bingo_board[2][2] == @called_number
  #       @bingo_board[2][2] == "X"
  #      elsif @bingo_board[3][2] == @called_number
  #       @bingo_board[3][2] == "X"
  #      elsif @bingo_board[4][2] == @called_number
  #       @bingo_board[4][2] == "X"
  #     end
  #   end
  #   if @called_letter == "G"
  #     if @bingo_board[0][3] == @called_number
  #       @bingo_board[0][3] == "X"
  #     elsif @bingo_board[1][3] == @called_number
  #       @bingo_board[1][3] == "X"
  #     elsif @bingo_board[2][3] == @called_number
  #       @bingo_board[2][3] == "X"
  #      elsif @bingo_board[3][3] == @called_number
  #       @bingo_board[3][3] == "X"
  #      elsif @bingo_board[4][3] == @called_number
  #       @bingo_board[4][3] == "X"
  #     end
  #   end
  #   if @called_letter == "O"
  #     if @bingo_board[0][4] == @called_number
  #       @bingo_board[0][4] == "X"
  #     elsif @bingo_board[1][4] == @called_number
  #       @bingo_board[1][4] == "X"
  #     elsif @bingo_board[2][4] == @called_number
  #       @bingo_board[2][4] == "X"
  #      elsif @bingo_board[3][4] == @called_number
  #       @bingo_board[3][4] == "X"
  #      elsif @bingo_board[4][4] == @called_number
  #       @bingo_board[4][4] == "X"
  #     end
  #   end
  # end


  #if @called_number.include?
  def display_board
    @bingo_board.each do |x|
      p x.join("  ")
    end
  end

end
# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

letters = ["B", "I", "N", "G", "O"]

new_game = BingoBoard.new(board)
#new_game.bingo_call(letters)
#p new_game.bingo_board
new_game.display_board
#p new_game.check_number




#Reflection

