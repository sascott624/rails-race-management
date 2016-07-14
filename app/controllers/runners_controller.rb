class RunnersController < ApplicationController

  def index
    @runners = Runner.all
  end

  def create
    @runner = Runner.create(params[:runner])
    if @runner.save
      redirect_to runner_path(@runner)
    else
      render :new
    end
  end

  def new
    @runner = Runner.new
  end

  def show
    @runner = Runner.find(params[:id])
  end

  def update
    @runner = Runner.find(params[:id])
    @runner.update(params[:runner])
    if @runner.save
      redirect_to runner_path(@runner)
    else
      render :edit
    end
  end

  def destroy
    @runner = Runner.find(params[:id])
    @runner.destroy
    redirect_to runners_path
  end

  def edit
    @runner = Runner.find(params[:id])
  end

end
