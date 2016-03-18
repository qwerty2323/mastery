class PagesController < ApplicationController
  def index
    @pages = Page.all
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @pages = Page.new
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])    
    if @page.update_attributes(page_params)
      redirect_to @page
    else
      render :edit
    end
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to :root
  end
  
  def create
    @pages = Page.new(page_params)
    if @pages.save
      redirect_to @pages
    else
      render :new
    end
  end

  private
  def page_params
    params.require(:page).permit(:name, :content, :parent_id)
  end
end
