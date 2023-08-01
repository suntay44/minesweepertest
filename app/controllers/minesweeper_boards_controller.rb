class MinesweeperBoardsController < ApplicationController
    def generate_board(width, height, mines)
        board = Array.new(height) { Array.new(width) { { revealed: false, mine: false, neighbor_mines: 0 } } }
        
        placed_mines = 0
        while placed_mines < mines
            x = rand(width)
            y = rand(height)

            next if board[y][x][:mine]

            board[y][x][:mine] = true
            placed_mines += 1
        end

        # Update neighbor_mines count for all cells based on mine placement
        (0...height).each do |y|
            (0...width).each do |x|
            next if board[y][x][:mine]

            (-1..1).each do |dy|
                (-1..1).each do |dx|
                ny = y + dy
                nx = x + dx
                next unless ny.between?(0, height - 1) && nx.between?(0, width - 1)

                board[y][x][:neighbor_mines] += 1 if board[ny][nx][:mine]
                end
            end
            end
        end

        board
    end    
    
    def new
        @minesweeper_board = MinesweeperBoard.new
        @recent_boards = MinesweeperBoard.order(created_at: :desc)
      end
    
      def generate
        @minesweeper_board = MinesweeperBoard.new(minesweeper_board_params)
    
        if @minesweeper_board.save
          width = @minesweeper_board.width
          height = @minesweeper_board.height
          mines = @minesweeper_board.mines
    
          board_data = generate_board(width, height, mines)
          @minesweeper_board.data = board_data.to_json
          @minesweeper_board.save
    
          redirect_to board_path(@minesweeper_board)
        else
          render :new
        end
      end
    
      def show
        @minesweeper_board = MinesweeperBoard.find(params[:id])
      end
    
      def index
        @recent_boards = MinesweeperBoard.order(created_at: :desc).limit(10)
      end
    
      private
    
      def minesweeper_board_params
        params.require(:minesweeper_board).permit(:email, :board_name, :width, :height, :mines)
      end
  end
  