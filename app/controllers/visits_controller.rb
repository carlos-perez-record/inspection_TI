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
      redirect_to visits_path, notice: "La Visita fue publicada con éxito"
    else
      render :new
    end
  end


  private
  # Metodo privado params
  def visit_params
    params.require(:visit).permit(:fecha)
  end

end
