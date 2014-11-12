class SearchController < ApplicationController
  def search
    if params[:query].nil?
      @hospitals = []
    else
      @hospitals = Hospital.search params[:query]
    end
  end
end
