require 'rack/utils'

helpers do
  def h(text)
    Rack::Utils.escape_html(text)
  end

  def board_cards(board, cards)
    cards.select { |c| c[:board] == board }
  end
end
