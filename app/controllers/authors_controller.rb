class AuthorsController < ApplicationController

  def view
    @authors = Author.all
    render json: @authors
  end
end
