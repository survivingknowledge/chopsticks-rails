class Food < ApplicationRecord

  before_action: :set_food, except [:index, :new, :create]

  def index
    @foods = Food.take(50)
  end

  def show
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to @food, notice: I18n.food_created
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @food.update(food_params)
      redirect_to @food, notice: I18n.food_updated
    else
      render :edit
    end
  end

  def destroy
    @food.destroy
    redirect_to foods_path
  end


  private

  def set_food
    @food = Food.find(params[:id])
  end

  def food_params
    params.require(:food).permit(

    )
  end
end
