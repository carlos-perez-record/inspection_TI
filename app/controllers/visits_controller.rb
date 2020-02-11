class VisitsController < ApplicationController

  # Se crea metodo index
  def index
    @visits = Visit.all
  end

  # Se crea metodo index
  def new
    @visit = Visit.new
  end

  # Se crea metodo create
  def create
    @visit = Visit.new(visit_params)
    if @visit.save
      redirect_to visits_index_path, notice: "La Visita fue publicada con éxito"
    else
      render :new
    end
  end

  def show
    @visit = Visit.find(params[:id])
  end

  def edit
    @visit = Visit.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path, notice: "El producto ha sido modificado con éxito"
    else
      render :edit
    end
  end

  private

  def visit_params
    params.require(:visit).permit(:fecha)
  end

end
