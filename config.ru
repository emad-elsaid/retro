# frozen_string_literal: true

load File.expand_path('server', File.dirname(__FILE__))

run Sinatra::Application.new
