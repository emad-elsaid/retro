# frozen_string_literal: true

require 'rack/utils'

helpers do
  def h(text)
    Rack::Utils.escape_html(text)
  end

  def board_cards(board, cards)
    cards.select { |c| c[:board] == board }
  end

  def remaining_votes(board, cards, userid)
    votes = cards
      .select { |card| card[:board] == board[:id] }
      .map { |card| card[:votes] }
      .flatten
      .count { |vote| vote == userid }
    board[:allowed_votes] - votes
  end

  def ensure_user
    redirect '/username' unless cookies[:userid]
    cookies[:userid]
  end

  def ensure_board(boards)
    board = boards[params[:board]]
    redirect '/' unless board
    board
  end
end
