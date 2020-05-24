require 'pry'

class TicTacToe

  WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(user_input)
    user_input = user_input.to_i - 1
  end

  def move(index, token)
    #binding.pry
    @board[index] = token
  end

  def position_taken?(index)
    #  binding.pry
    if @board[index] == "X" || @board[index] == "O"
      true
    else @board[index] != " "
      false
    end
  end

  def valid_move?(index)
    if index.between?(0,8) && position_taken?(index) != true
      true
    else
    end
  end

  def turn_count(board)
    counter = 0
    9 - @board.count(" ")
  end

  def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(user_input)
    if valid_move?(index)
      move(index, token)
      display_board(board)
    else
      turn(board)
    end
  end

  


end
