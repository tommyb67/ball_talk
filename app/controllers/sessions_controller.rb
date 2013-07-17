class SessionsController < ApplicationController
  def new
  end

  def create
    name = params[:username]
    password = params[:password]
  end
end
