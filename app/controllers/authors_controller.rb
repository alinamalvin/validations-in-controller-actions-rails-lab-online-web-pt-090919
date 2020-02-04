class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
  end


  private

  def author_params
    params.permit(:email, :name)
  end
  
end
