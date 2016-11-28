class HomeController < ApplicationController
  def index
    binding.pry
    RestClient.get 'http://logs:4567/logs', { params: { type: 'home', log: 'HELLO!' } }
  end
end
