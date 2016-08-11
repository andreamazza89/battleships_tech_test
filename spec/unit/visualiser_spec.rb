describe Visualiser do

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

  let(:mock_console) { spy('mock_console') }
  let(:mock_board)   { double('mock_board') }
  let(:visualiser)   { described_class.new(mock_console)}

  describe '#show_board' do
    context 'given an empty board' do
      it 'sends the appropriate string to the injected output stream' do
        visualiser.show_board(mock_board) 
        expect(mock_console).to have_received(:puts).with(EMPTY_BOARD)
      end 
    end
  end

end
