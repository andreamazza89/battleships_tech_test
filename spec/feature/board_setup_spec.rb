describe 'Feature: Board setup' do

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

  it 'Visualiser displays empty board as required' do
    test_board  = Board.new
    visualiser = Visualiser.new

    expect { visualiser.show_board(test_board) }.to output(EMPTY_BOARD).to_stdout_from_any_process
  end

end
