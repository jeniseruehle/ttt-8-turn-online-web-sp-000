def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  index.between?(0, 8) && !(position_taken?(board, index))
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil 
    return false 
  else
    return true 
  end
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end  

def move(board, index, default_player = "X")
  board[index] = default_player
  return board
end  

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  valid_move?(board, 0)
  if !(valid_move?(board, 0)
    puts "Please enter 1-9:"
  else
    
end  