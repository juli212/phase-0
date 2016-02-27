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
    # return a row with BINGO spaced out nicely
    # return a row of ~~~~~~~
    # return each sub-array horizontally as a string on a separate line with spaces between each object

# Initial Solution

class BingoBoard
  attr_accessor :bingo_board, :bingo_letters

  def initialize(board)
    @bingo_board = board
    
  end

  def bingo_call(letters)
    @called_letter = letters.sample
    @called_number = rand(1..100)
    @bingo_call = @called_letter + @called_number.to_s 
    p "The next Bingo square is #{@bingo_call}!"
  end

def check_number
    if @called_letter == "B"
      if @bingo_board[0][0] == @called_number
        @bingo_board[0][0] = " X"
      elsif @bingo_board[1][0] == @called_number
        @bingo_board[1][0] = " X"
      elsif @bingo_board[2][0] == @called_number
        @bingo_board[2][0] = " X"
       elsif @bingo_board[3][0] == @called_number
        @bingo_board[3][0] = " X"
       elsif @bingo_board[4][0] == @called_number
        @bingo_board[4][0] = " X"
      end
    end
    if @called_letter == "I"
      if @bingo_board[0][1] == @called_number
        @bingo_board[0][1] = " X"
      elsif @bingo_board[1][1] == @called_number
        @bingo_board[1][1] = " X"
      elsif @bingo_board[2][1] == @called_number
        @bingo_board[2][1] = " X"
       elsif @bingo_board[3][1] == @called_number
        @bingo_board[3][1] = " X"
       elsif @bingo_board[4][1] == @called_number
        @bingo_board[4][1] = " X"
      end
    end    
    if @called_letter == "N"
      if @bingo_board[0][2] == @called_number
        @bingo_board[0][2] = " X"
      elsif @bingo_board[1][2] == @called_number
        @bingo_board[1][2] = " X"
      elsif @bingo_board[2][2] == @called_number
        @bingo_board[2][2] = " X"
       elsif @bingo_board[3][2] == @called_number
        @bingo_board[3][2] = " X"
       elsif @bingo_board[4][2] == @called_number
        @bingo_board[4][2] = " X"
     end
    end
    if @called_letter == "G"
      if @bingo_board[0][3] == @called_number
        @bingo_board[0][3] = " X"
      elsif @bingo_board[1][3] == @called_number
        @bingo_board[1][3] = " X"
      elsif @bingo_board[2][3] == @called_number
        @bingo_board[2][3] = " X"
       elsif @bingo_board[3][3] == @called_number
        @bingo_board[3][3] = " X"
       elsif @bingo_board[4][3] == @called_number
        @bingo_board[4][3] = " X"
      end
    end
    if @called_letter == "O"
      if @bingo_board[0][4] == @called_number
        @bingo_board[0][4] = " X"
      elsif @bingo_board[1][4] == @called_number
        @bingo_board[1][4] = " X"
      elsif @bingo_board[2][4] == @called_number
        @bingo_board[2][4] = " X"
       elsif @bingo_board[3][4] == @called_number
        @bingo_board[3][4] = " X"
       elsif @bingo_board[4][4] == @called_number
        @bingo_board[4][4] = " X"
      end
    end
   display_board
  end

  def display_board
    puts "  B   I   N   G   O"
    puts "~~~~~~~~~~~~~~~~~~~~"
    @bingo_board.each do |x|
      p x.join("  ")
    end
  end

end

# Refactored Solution

class BingoBoard
  attr_accessor :bingo_board, :bingo_letters


  def initialize(board)
    @bingo_board = board
    
  end

  def bingo_call(letters)
    @called_letter = letters.sample
    @called_number = rand(1..100)
    @bingo_call = @called_letter + @called_number.to_s 
    p "The next Bingo square is #{@bingo_call}!"
  end

  def check_number
    if @called_letter == "B"
      @bingo_board.each do |row|
        if row[0] == @called_number
          row[0] = " X "
        end
      end
    end
    if @called_letter == "I"
      @bingo_board.each do |row|
        if row[1] == @called_number
          row[1] = " X "
        end
      end
    end
    if @called_letter == "N"
      @bingo_board.each do |row|
        if row[2] == @called_number
          row[2] = " X "
        end
      end
       # map! { |dex| dex[2] == @called_number ? "x" : dex[2] }
    end
    if @called_letter == "G"
      @bingo_board.each do |row|
        if row[3] == @called_number
          row[3] = " X "
        end
      end
    end
    if @called_letter == "O"
      @bingo_board.each do |row|
        if row[4] == @called_number
          row[4] = " X "
        end
      end
    end
   # p display_board
  end

  def display_board
    puts "  B   I   N   G   O"
    puts "~~~~~~~~~~~~~~~~~~~~"
    @bingo_board.each do |x|
      p x.join("  ")
    end
  end

end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

letters = ["B", "I", "N", "G", "O"]

new_game = BingoBoard.new(board)
new_game.bingo_call(letters)
puts
puts
new_game.check_number
new_game.display_board

#new_game.display_board
#p new_game.check_number




#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  I think my pseudocoding for this challenge is better than most of my attempts at pseudocoding so far. I think this challenge was complicated enough that I could not even picture immediately jumping in to write code so I took the pseudocoding more seriously. It also helped a lot that the assignment broke it up into sections for us. That made organizing my thoughts much more managable.

What are the benefits of using a class for this challenge?
  having the instance variables was really really valuable. I also cannot even really fathom how I would write code for a bingo game without a class. I assume I would have to be setting method outputs equal to other variables and then calling those variables in new methods and it would get very messy very quickly.

How can you access coordinates in a nested array?
  Index numbers are very useful. Use the index of the first array and then the index positiong in the nested array to get the value in that location.

What methods did you use to access and modify the array?
  I ended up iterating through a specific index (determined by which letter. Ex: B - index 0, I - index 1, etc.) for each sub-array (row) with #each and just using the = to set a new value to 'X' if it equaled the last number called. At first I tried to use map! but then it was only returning the one column that was modified and leaving out the rest of each array. 

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
  At first I was going to use #include? but ended up with a 2-layer if statement instead. 
  A method I learned about 

How did you determine what should be an instance variable versus a local variable?
  I mostly turned variables into instance variables when they were not working... I made instance variables when I needed to call them from outside of the method they were defined in. At the end of my refactoring, I added a new instance variable just to return the value of the last bingo call because previously, I did not have one for that and I thought it might be useful.

What do you feel is most improved in your refactored solution?
  The length of my code is about 1/5th the size. It is shorter and much more readable than before. I think I can shorten it even more since I do have the same code block iterating 5 times but I am not sure if I will have the time to fix that. I also had some issues with calling instance variables but I believe I worked that out in my initial solution.
  Interestingly, I actually finished my refactored solution before I managed to get my initial solution working. I wrote out individual lines of code basically for each position on the bingo board originally because I was intimidated by the thought of trying to iterate before I really understood what was going on. Unfortunately, I overlooked a really basic thing... I was using == instead of = to reassign an integer to "X" so none of my code was modifying the bingo-board values even though I knew my logic was correct. It was not until after I worked on my refactored iteration that I realized what I had been doing wrong! Duh, such simple problems...
=end