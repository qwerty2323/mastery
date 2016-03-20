class PagesController < ApplicationController
  before_action :set_page, only: [:show, :edit, :update, :destroy]
  before_action :find_parent, only: :new
  def index
    @pages = Page.all
  end

  def show
  end

  def new
    @pages = Page.new(parent_id: @parent_id)
  end

  def edit
  end

  def update    
    if @page.update_attributes(page_params)
      redirect_to @page
    else
      render :edit
    end
  end

  def destroy
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
  def set_page
    @page = Page.find(params[:id])
  end
  
  def page_params
    params.require(:page).permit(:name, :content, :parent_id)
  end

  def find_parent
    if params[:parent_id]
      @parent_id = params[:parent_id]
    end
  end
end
