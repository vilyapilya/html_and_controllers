class CatsController < ApplicationController
  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cats = Cat.find(params[:id])
    if @cats.save
      render :show
    else
      render json: @cats.errors.full_messages, status: :unprocessable_entity
    end
  end

  def edit
    @cats = Cat.find(params[:id])
    render :edit
  end

  def update
    @cats = Cat.find(params[:id])

    if @cats.update_attributes(params)
      redirect_to cat_url(@cats)
    else
      render :edit
    end
  end

  def new
    @cat = Cat.new
    render :new
  end

  def create
    @cat = Cat.new(cat_params)
    if @cat.save!
      redirect_to cat_url(@cat)
    else
      render :new
    end
  end

  private
  def cat_params
    params.require(:cat).permit(:name, :sex, :birth_date, :color, :description)
  end

end
