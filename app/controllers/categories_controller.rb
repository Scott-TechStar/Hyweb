class CategoriesController < ApplicationController

  def index
    @categories  = Category.all
  end

  def new
    @category = Category.new()
  end

  def create

    @category = Category.new(category_params)

    if @category.save

      render 'index'

    else
      render 'new'
    end
  end
end


private

def category_params

  params.require(:category).permit(:name,:description)

end