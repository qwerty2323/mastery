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
    params.require(:page).permit(:name, :content)
  end
end
