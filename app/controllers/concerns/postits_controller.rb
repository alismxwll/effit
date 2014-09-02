class PostitsController < ApplicationController
  def index
    @postits = Postit.all.order(:updated_at)
    render('p/index.html.erb')
  end
  
  def new
    @subeffits = Subeffit.all
    @effer
    @postit = Postit.new
    render('p/new.html.erb')
  end
  
  def create
    @postit = Postit.new(params[:postit])
    if @postit.save
      flash[:notice] = "Your Postit has been added."
      redirect_to("/p/#{@postit.id}")
    else
      render('p/new.html.erb')
    end
  end
 
  def show
    @effer
    @postit = Postit.find(params[:id])
    render('p/show.html.erb')
  end

  def edit
    @subeffits = Subeffit.all
    @effer = Effer.find(params[:id])
    @postit = Postit.find(params[:id])
    render('p/edit.html.erb')
  end
  
  def update
    @postit = Postit.find(params[:id])
    if @postit.update(params[:postit])
      flash[:notice] = "Your Postit has been updated."
      redirect_to('/')
    else
      render('p/edit.html.erb')
    end
  end

  def destroy
    @postit = Postit.find(params[:id])
    @postit.destroy
    flash[:notice] = "Your Postit has been removed."
    redirect_to('/')
  end
end