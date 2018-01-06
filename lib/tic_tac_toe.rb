class TicTacToe
  WIN_COMBINATIONS = [
   [0,1,2], # Top row
   [3,4,5],  # Middle row
   [6,7,8],  # Bottom row
   [0,3,6],  # First column
   [1,4,7],  # Middle column
   [2,5,8],  # Last column
   [0,4,8],  # Diagonal from top left to bottom right
   [6,4,2]  # Diagonal from bottom left to top right
  ]

  def initialize(board)
    @board = board || Array.new(9, " ")
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(input)
    input.to_i - 1
  end

  def move(index, character)
    @board[index] = character
  end

  def position_taken?(index)
    !(@board[index].nil? || @board[index] == " ")
  end

  def valid_move?(index)
    if !index.between?(0,9) || position_taken?(@board, index)
      return false
    else
      return true
    end
  end

  def turn
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)

    character = turn_count % 2 == 0 ? "X" : "O"

    if valid_move?(index)
      move(index, character)
      display_board
      return
    else
      turn
    end
end

end
