class SubeffitsController < ApplicationController
  def index
    @subeffits = Subeffit.all
    render('e/index.html.erb')
  end
  
  def new
    @postit = Postit.new
    @subeffit = Subeffit.new
    render('e/new.html.erb')
  end
  
  def create
    @subeffit = Subeffit.new(params[:subeffit])
    if @subeffit.save
      flash[:notice] = "Your subEffit has been added."
      flash[:alert] = "Make the first post. or it wont work."
      redirect_to('/p/new')
    else
      render('e/new.html.erb')
    end
  end
 
  def show
    @subeffit = Subeffit.find(params[:id])
    render('e/show.html.erb')
  end

  def edit
    @subeffit = Subeffit.find(params[:id])
    render('e/edit.html.erb')
  end
  
  def update
    @subeffit = Subeffit.find(params[:id])
    if @subeffit.update(params[:subeffit])
      flash[:notice] = "Your subEffit has been updated."
      redirect_to('/')
    else
      render('e/edit.html.erb')
    end
  end

  def destroy
    @subeffit = Subeffit.find(params[:id])
    @subeffit.destroy
    flash[:notice] = "Your subEffit has been removed."
    redirect_to('/')
  end
end