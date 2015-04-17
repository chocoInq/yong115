class HomeController < ApplicationController
  def index
    @comments = Comment.all.reverse
    @password = 'PASSWORD'
  end

  def write
    name = params[:name]
    msg = params[:message]
    Comment.create(name: name, content: msg)
    redirect_to '/#contact'
  end
  
  def idea
    if params[:password] == 'choco1234'
    else
      @password = 'INCORRECT'
      redirect_to '/#idea'
    end
  end
end
