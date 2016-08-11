class Visualiser

  def initialize(output = STDOUT)
    @output = output
  end

  def show_board(board)
    output.puts(EMPTY_BOARD) 
  end

private
  
  attr_reader :output

  EMPTY_BOARD = 
"   A B C D E F G H I J
 1|-------------------
 2|-------------------
 3|-------------------
 4|-------------------
 5|-------------------
 6|-------------------
 7|-------------------
 8|-------------------
 9|-------------------
10|-------------------
"

end
