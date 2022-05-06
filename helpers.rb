# frozen_string_literal: true

require 'rack/utils'

helpers do
  def h(text)
    Rack::Utils.escape_html(text)
  end

  def simple_format(text)
    h(text).gsub('|', '<br> --- <br>')
  end

  def theme
    cookies[:theme] || 'light'
  end

  def remaining_votes(board, userid)
    votes = board[:cards].sum { |_, card| card[:votes].count(userid) }
    board[:allowed_votes] - votes
  end

  def ensure_user
    unless cookies[:userid]
      cookies[:back] = request.path_info
      redirect '/username'
    end
    cookies[:userid]
  end

  def ensure_board(boards)
    board = boards[params[:board]]
    redirect '/' unless board
    board
  end
end
