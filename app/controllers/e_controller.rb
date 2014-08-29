class EController < ApplicationController
  def index
    @es = E.all
    render('e/index.html.erb')
  end
  
  def new
    @e = E.new
    render('e/new.html.erb')
  end
  
  def create
    @e = E.new(params[:e])
    if @e.save
#       flash
      redirect_to('/')
    else
      render('e/new.html.erb')
    end
  end
 
  def show
    @e = E.find(params[:e])
    render('e/show.html.erb')
  end

  def edit
    @e = E.find(params[:id])
    render('e/edit.html.erb')
  end
  
  def update
    @e = E.find(params[:id])
    if @e.update(params[:e])
#       flash
      redirect_to('/')
    else
      render('e/edit.html.erb')
    end
  end

  def destroy
    @e = E.find(params[:id])
    @e.destroy
#     flash
    redirect_to('/')
  end
end