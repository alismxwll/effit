class EffersController < ApplicationController
  def index
    @effers = Effer.all
    render('a/index.html.erb')
  end
  
  def new
    @effer = Effer.new
    render('a/new.html.erb')
  end
  
  def create
    @effer = Effer.new(params[:effer])
    if @effer.save
      flash[:notice] = "Your Account has been added."
      redirect_to('/a/')
    else
      render('a/new.html.erb')
    end
  end
 
  def show
    @effer = Effer.find(params[:id])
    render('/a/show.html.erb')
  end

  def edit
    @effer = Effer.find(params[:id])
    render('a/edit.html.erb')
  end
  
  def update
    @effer = Effer.find(params[:id])
    if @effer.update(params[:effer])
      flash[:notice] = "Your account has been updated."
      redirect_to('/a/')
    else
      render('a/edit.html.erb')
    end
  end

  def destroy
    @effer = Effer.find(params[:id])
    @effer.destroy
    flash[:notice] = "Your account has been removed."
    redirect_to('/')
  end
end