# frozen_string_literal: true

require 'rack/utils'

helpers do
  def h(text)
    Rack::Utils.escape_html(text)
  end

  def board_cards(board, cards)
    cards.select { |c| c[:board] == board }
  end

  def votes_count(cards, userid)
    cards.map { |c| c[:votes] }.flatten.count { |v| v == userid }
  end
end
