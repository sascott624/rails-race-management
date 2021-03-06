class SessionsController < ApplicationController

  def new
  end

  def create
    @runner = Runner.find(id: params[:id])
    return head(:forbidden) unless @runner.authenticate(params[:password])
    session[:runner_id] = @runner.id
  end

  def destroy
    if session[:runner_id]
      session.destroy
    end
    redirect_to root
  end

end
