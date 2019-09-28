class CategoriesController < ApplicationController

  def index
    @categories  = Category.all
  end

  def new

    @category = Category.new()
  end

  def show
    @category = Category.find(params[:id])
    render 'show'
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])

    if @category.update(category_params)
      redirect_to @category
    else
      render 'edit'
    end
  end

  def create

    @category = Category.new(category_params)

    if @category.save

      redirect_to categories_path

    else
      redirect_to 'new'
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_url, notice: 'category was successfully destroyed.'}
    end
  end

  def set_slug
    self.slug = name.to_s.parameterize
  end
  
end


private

def category_params

  params.require(:category).permit(:name, :description, :image)

end