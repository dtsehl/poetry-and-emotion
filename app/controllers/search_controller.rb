class SearchController < ApplicationController
  def index
    @poems = SearchFacade.ten_poems_by_author(params[:author])
    require "pry"; binding.pry
  end
end
