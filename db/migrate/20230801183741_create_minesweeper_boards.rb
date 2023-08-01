class CreateMinesweeperBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :minesweeper_boards do |t|
      t.string :email
      t.string :board_name
      t.integer :width
      t.integer :height
      t.integer :mines
      t.text :data

      t.timestamps
    end
  end
end
