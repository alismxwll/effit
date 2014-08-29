class EffitsController < ApplicationController
  def index
    @effits = Section.all
    render('effits/index.html.erb')
  end
  
  def new
    @effit = Section.new
    render('effits/new.html.erb')
  end
  
  def create
    @effit = Section.new(params[:effit])
    if @effit.save
#       flash
      redirect_to('/')
    else
      render('effits/new.html.erb')
    end
  end
 
  def show
    @effit = Section.find(params[:id])
    render('effits/show.html.erb')
  end

  def edit
    @effit = Section.find(params[:id])
    render('effits/edit.html.erb')
  end
  
  def update
    @effit = Section.find(params[:id])
    if @effit.update(params[:effit])
#       flash
      redirect_to('/')
    else
      render('effits/edit.html.erb')
    end
  end

  def destroy
    @effit = Section.find(params[:id])
    @effit.destroy
#     flash
    redirect_to('/')
  end
end