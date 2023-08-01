Rails.application.routes.draw do
  root 'minesweeper_boards#index'
  post 'generate_board', to: 'minesweeper_boards#generate'
  get 'boards/:id', to: 'minesweeper_boards#show', as: :board
  get 'boards', to: 'minesweeper_boards#new', as: :boards
end
