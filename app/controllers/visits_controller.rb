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
    @visit.user = current_user
    if @visit.save
      redirect_to visits_path, notice: "La Visita fue publicada con éxito"
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
    @visit = Visit.find(params[:id])
    if @visit.update(visit_params)
      redirect_to visits_path, notice: "La visita ha sido modificado con éxito"
    else
      render :edit
    end
  end

  def destroy
    visit = Visit.find(params[:id])
    visit.destroy
    redirect_to visits_path, notice: "La visita fue eliminada con éxito"
  end

  private

  def visit_params
    params.require(:visit).permit(:fecha)
  end

end
