module VisitsHelper
  def form_titlevisit
    @visit.new_record? ? "Registrar Visita" : "Modificar Visita"
  end
end
