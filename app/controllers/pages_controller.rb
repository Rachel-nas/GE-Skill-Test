class PagesController < ApplicationController
  def show
    request.original_url
  end
end
