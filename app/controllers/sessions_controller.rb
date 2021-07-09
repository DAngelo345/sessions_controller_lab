class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name] || params[:name].empty?
       
        redirect_to controller: 'sessions', action: 'new'
        # byebug
    else
        session[:name] = params[:name]
        redirect_to '/'

    end

  end

  def destroy
    session.clear
   
  end
end
