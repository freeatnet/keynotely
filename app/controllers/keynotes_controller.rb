class KeynotesController < ApplicationController
  def index
  end

  def show
    @keynote = Keynote.find(params[:id])
  end

  def new
    @keynote = Keynote.new
    3.times { @keynote.files.build }
  end

  def create
    @keynote = Keynote.new(params[:keynote])
    if @keynote.save
      redirect_to @keynote, :notice => "Successfully created a keynote."
    else
      render :action => 'new'
    end
  end
end
