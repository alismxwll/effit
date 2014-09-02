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
    flash[:notice] = "Your Account has been added."
    if @effer.save
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
    flash[:notice] = "Your account has been updated."
    if @effer.update(params[:effer])
      redirect_to('/a/')
    else
      render('a/edit.html.erb')
    end
  end

  def destroy
    @effer = Effer.find(params[:id])
    flash[:notice] = "Your account has been removed."
    @effer.destroy
#     flash
    redirect_to('/')
  end
end