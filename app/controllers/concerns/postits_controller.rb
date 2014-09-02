class PostitsController < ApplicationController
  def index
    @effers = Effer.all
    @postits = Postit.all
    render('p/index.html.erb')
  end
  
  def new
    @postit = Postit.new
    render('p/new.html.erb')
  end
  
  def create
    @postit = Postit.new(params[:postit])
    flash[:notice] = "Your Postit has been added."
    if @postit.save
      redirect_to('/')
    else
      render('p/new.html.erb')
    end
  end
 
  def show
    @postit = Postit.find(params[:id])
    render('p/show.html.erb')
  end

  def edit
    @postit = Postit.find(params[:id])
    render('p/edit.html.erb')
  end
  
  def update
    @postit = Postit.find(params[:id])
    flash[:notice] = "Your Postit has been updated."
    if @postit.update(params[:postit])
      redirect_to('/')
    else
      render('p/edit.html.erb')
    end
  end

  def destroy
    @postit = Postit.find(params[:id])
    flash[:notice] = "Your Postit has been removed."
    @postit.destroy
    redirect_to('/')
  end
end