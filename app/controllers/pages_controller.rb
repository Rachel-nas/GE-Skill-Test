class PagesController < ApplicationController
  def show
    @url = request.original_url
  end
end
